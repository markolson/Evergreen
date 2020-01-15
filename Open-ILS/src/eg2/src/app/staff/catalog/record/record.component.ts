import {Component, OnInit, Input, ViewChild, HostListener} from '@angular/core';
import {NgbTabset, NgbTabChangeEvent} from '@ng-bootstrap/ng-bootstrap';
import {Router, ActivatedRoute, ParamMap} from '@angular/router';
import {PcrudService} from '@eg/core/pcrud.service';
import {IdlObject} from '@eg/core/idl.service';
import {CatalogSearchContext, CatalogSearchState} from '@eg/share/catalog/search-context';
import {CatalogService} from '@eg/share/catalog/catalog.service';
import {BibRecordService, BibRecordSummary} from '@eg/share/catalog/bib-record.service';
import {StaffCatalogService} from '../catalog.service';
import {BibSummaryComponent} from '@eg/staff/share/bib-summary/bib-summary.component';
import {StoreService} from '@eg/core/store.service';
import {ConfirmDialogComponent} from '@eg/share/dialog/confirm.component';
import {MarcEditorComponent} from '@eg/staff/share/marc-edit/editor.component';

@Component({
  selector: 'eg-catalog-record',
  templateUrl: 'record.component.html'
})
export class RecordComponent implements OnInit {

    recordId: number;
    recordTab: string;
    summary: BibRecordSummary;
    searchContext: CatalogSearchContext;
    @ViewChild('recordTabs', { static: true }) recordTabs: NgbTabset;
    @ViewChild('marcEditor', {static: false}) marcEditor: MarcEditorComponent;
    defaultTab: string; // eg.cat.default_record_tab

    @ViewChild('pendingChangesDialog', {static: false})
        pendingChangesDialog: ConfirmDialogComponent;

    constructor(
        private router: Router,
        private route: ActivatedRoute,
        private pcrud: PcrudService,
        private bib: BibRecordService,
        private cat: CatalogService,
        private staffCat: StaffCatalogService,
        private store: StoreService
    ) {}

    ngOnInit() {
        this.searchContext = this.staffCat.searchContext;

        this.defaultTab =
            this.store.getLocalItem('eg.cat.default_record_tab')
            || 'item_table';

        // Watch for URL record ID changes
        // This includes the initial route.
        // When applying the default configured tab, no navigation occurs
        // to apply the tab name to the URL, it displays as the default.
        // This is done so no intermediate redirect is required, which
        // messes with browser back/forward navigation.
        this.route.paramMap.subscribe((params: ParamMap) => {
            this.recordTab = params.get('tab');
            this.recordId = +params.get('id');
            this.searchContext = this.staffCat.searchContext;

            if (!this.recordTab) {
                this.recordTab = this.defaultTab || 'item_table';
            }

            this.loadRecord();
        });
    }

    setDefaultTab() {
        this.defaultTab = this.recordTab;
        this.store.setLocalItem('eg.cat.default_record_tab', this.recordTab);
    }

    // Changing a tab in the UI means changing the route.
    // Changing the route ultimately results in changing the tab.
    beforeTabChange(evt: NgbTabChangeEvent) {

        // prevent tab changing until after route navigation
        evt.preventDefault();

        // Protect against tab changes with dirty data.
        this.canDeactivate().then(ok => {
            if (ok) {
                this.recordTab = evt.nextId;
                this.routeToTab();
            }
        });
    }

    /*
     * Handle 3 types of navigation which can cause loss of data.
     * 1. Record detail tab navigation (see also beforeTabChange())
     * 2. Intra-Angular route navigation away from the record detail page
     * 3. Browser page unload/reload
     *
     * For the #1, and #2, display a eg confirmation dialog.
     * For #3 use the stock browser onbeforeunload dialog.
     *
     * Note in this case a tab change is a route change, but it's one
     * which does not cause RecordComponent to unload, so it has to be
     * manually tracked in beforeTabChange().
     */
    @HostListener('window:beforeunload', ['$event'])
    canDeactivate($event?: Event): Promise<boolean> {

        if (this.marcEditor && this.marcEditor.changesPending()) {

            // Each warning dialog clears the current "changes are pending"
            // flag so the user is not presented with the dialog again
            // unless new changes are made.
            this.marcEditor.clearPendingChanges();

            if ($event) { // window.onbeforeunload
                $event.preventDefault();
                $event.returnValue = true;

            } else { // tab OR route change.
                return this.pendingChangesDialog.open().toPromise();
            }

        } else {
            return Promise.resolve(true);
        }
    }

    routeToTab() {
        const url =
            `/staff/catalog/record/${this.recordId}/${this.recordTab}`;

        // Retain search parameters
        this.router.navigate([url], {queryParamsHandling: 'merge'});
    }

    loadRecord(): void {

        // Avoid re-fetching the same record summary during tab navigation.
        if (this.staffCat.currentDetailRecordSummary &&
            this.recordId === this.staffCat.currentDetailRecordSummary.id) {
            this.summary = this.staffCat.currentDetailRecordSummary;
            return;
        }

        this.summary = null;
        this.bib.getBibSummary(
            this.recordId,
            this.searchContext.searchOrg.id(),
            this.searchContext.searchOrg.ou_type().depth()).toPromise()
        .then(summary => {
            this.summary =
                this.staffCat.currentDetailRecordSummary = summary;
            this.bib.fleshBibUsers([summary.record]);
        });
    }

    currentSearchOrg(): IdlObject {
        if (this.staffCat && this.staffCat.searchContext) {
            return this.staffCat.searchContext.searchOrg;
        }
        return null;
    }

    handleMarcRecordSaved() {
        this.staffCat.currentDetailRecordSummary = null;
        this.loadRecord();
    }
}


