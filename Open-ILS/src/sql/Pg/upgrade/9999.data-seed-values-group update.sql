-- Updates config.org_unit_setting_type to remove the old tag prefixes for once 
-- groups have been added.
--
BEGIN;

INSERT INTO config.upgrade_log (version) VALUES ('9999');


-- FIXME these need i18n, along with their descriptions: reported in bug# 797809
UPDATE config.org_unit_setting_type SET label = 'Behind Desk Pickup Supported' WHERE name = 'circ.holds.behind_desk_pickup_supported';
UPDATE config.org_unit_setting_type SET label = 'Canceled holds display age' WHERE name = 'circ.holds.canceled.display_age';
UPDATE config.org_unit_setting_type SET label = 'Canceled holds display count' WHERE name = 'circ.holds.canceled.display_count';
UPDATE config.org_unit_setting_type SET label = 'Defines the control number identifier used in 003 and 035 fields.' WHERE name = 'cat.marc_control_number_identifier';
UPDATE config.org_unit_setting_type SET label = 'Maximum library target attempts' WHERE name = 'circ.holds.max_org_unit_target_loops';
UPDATE config.org_unit_setting_type SET label = 'Org Unit Target Weight' WHERE name = 'circ.holds.org_unit_target_weight';
UPDATE config.org_unit_setting_type SET label = 'Patron Merge Address Delete' WHERE name = 'circ.user_merge.delete_addresses';
UPDATE config.org_unit_setting_type SET label = 'Patron Merge Barcode Delete' WHERE name = 'circ.user_merge.delete_cards';
UPDATE config.org_unit_setting_type SET label = 'Patron Merge Deactivate Card' WHERE name = 'circ.user_merge.deactivate_cards';
UPDATE config.org_unit_setting_type SET label = 'Reset request time on un-cancel' WHERE name = 'circ.holds.uncancel.reset_request_time';
UPDATE config.org_unit_setting_type SET label = 'Use weight-based hold targeting' WHERE name = 'circ.holds.target_holds_by_org_unit_weight';


UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('cat.bib.delete_on_no_copy_via_acq_lineitem_cancel','Delete bib if all copies are deleted via Acquisitions lineitem cancellation.', 'coust', 'label') WHERE name = 'cat.bib.delete_on_no_copy_via_acq_lineitem_cancel';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('cat.default_classification_scheme', 'Default Classification Scheme', 'coust', 'label') WHERE name = 'cat.default_classification_scheme';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('cat.default_copy_status_fast', 'Default copy status (fast add)', 'coust', 'label') WHERE name = 'cat.default_copy_status_fast';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('cat.default_copy_status_normal', 'Default copy status (normal)', 'coust', 'label') WHERE name = 'cat.default_copy_status_normal';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('cat.label.font.family','Spine and pocket label font family', 'coust', 'label') WHERE name = 'cat.label.font.family';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('cat.label.font.size','Spine and pocket label font size', 'coust', 'label') WHERE name = 'cat.label.font.size';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('cat.label.font.weight', 'Spine and pocket label font weight', 'coust', 'label') WHERE name = 'cat.label.font.weight';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('cat.spine.line.height', 'Spine label maximum lines', 'coust', 'label') WHERE name = 'cat.spine.line.height';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('cat.spine.line.margin', 'Spine label left margin', 'coust', 'label') WHERE name = 'cat.spine.line.margin';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('cat.spine.line.width', 'Spine label line width', 'coust', 'label') WHERE name = 'cat.spine.line.width';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('circ.auto_hide_patron_summary', 'Toggle off the patron summary sidebar after first view.', 'coust', 'label') WHERE name = 'circ.auto_hide_patron_summary';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('circ.block_renews_for_holds', 'Block Renewal of Items Needed for Holds', 'coust', 'label') WHERE name = 'circ.block_renews_for_holds';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('circ.booking_reservation.default_elbow_room','Booking elbow room','coust','label') WHERE name = 'circ.booking_reservation.default_elbow_room';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('circ.do_not_tally_claims_returned','Do not include outstanding Claims Returned circulations in lump sum tallies in Patron Display.', 'coust', 'label') WHERE name = 'circ.do_not_tally_claims_returned';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('circ.hold_boundary.hard', 'Hard boundary', 'coust', 'label') WHERE name = 'circ.hold_boundary.hard';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('circ.hold_boundary.soft', 'Soft boundary', 'coust', 'label') WHERE name = 'circ.hold_boundary.soft';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('circ.hold_expire_alert_interval', 'Expire Alert Interval', 'coust', 'label') WHERE name = 'circ.hold_expire_alert_interval';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('circ.hold_expire_interval', 'Expire Interval', 'coust', 'label') WHERE name = 'circ.hold_expire_interval';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('circ.holds.clear_shelf.copy_status', 'Clear shelf copy status', 'coust', 'label') WHERE name = 'circ.holds.clear_shelf.copy_status';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext( 'circ.holds.clear_shelf.no_capture_holds','Bypass hold capture during clear shelf process', 'coust', 'label') WHERE name = 'circ.holds.clear_shelf.no_capture_holds';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('circ.holds.default_estimated_wait_interval', 'Default Estimated Wait', 'coust', 'label') WHERE name = 'circ.holds.default_estimated_wait_interval';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('circ.holds.expired_patron_block','Block hold request if hold recipient privileges have expired', 'coust', 'label') WHERE name = 'circ.holds.expired_patron_block';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('circ.holds_fifo', 'FIFO', 'coust', 'label') WHERE name = 'circ.holds_fifo';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('circ.holds.hold_has_copy_at.alert', 'Has Local Copy Alert', 'coust', 'label') WHERE name = 'circ.holds.hold_has_copy_at.alert';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('circ.holds.hold_has_copy_at.block', 'Has Local Copy Block', 'coust', 'label') WHERE name = 'circ.holds.hold_has_copy_at.block';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('circ.holds.min_estimated_wait_interval', 'Minimum Estimated Wait', 'coust', 'label') WHERE name = 'circ.holds.min_estimated_wait_interval';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext( 'circ.holds.recall_fine_rules', 'An array of fine amount, fine interval, and maximum fine.', 'coust', 'label') WHERE name = 'circ.holds.recall_fine_rules';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext( 'circ.holds.recall_return_interval', 'Truncated loan period.', 'coust', 'label') WHERE name = 'circ.holds.recall_return_interval';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext( 'circ.holds.recall_threshold', 'Circulation duration that triggers a recall.', 'coust', 'label') WHERE name = 'circ.holds.recall_threshold';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('circ.hold_stalling_hard', 'Hard stalling interval', 'coust', 'label') WHERE name = 'circ.hold_stalling_hard';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('circ.hold_stalling.soft', 'Soft stalling interval', 'coust', 'label') WHERE name = 'circ.hold_stalling.soft';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('circ.lost_immediately_available', 'Lost items usable on checkin', 'coust', 'label') WHERE name = 'circ.lost_immediately_available';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('circ.max_accept_return_of_lost', 'Void lost max interval', 'coust', 'label') WHERE name = 'circ.max_accept_return_of_lost';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('circ.max_fine.cap_at_price', 'Cap Max Fine at Item Price', 'coust', 'label') WHERE name = 'circ.max_fine.cap_at_price';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('circ.missing_pieces.copy_status','Item Status for Missing Pieces', 'coust', 'label') WHERE name = 'circ.missing_pieces.copy_status';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('circ.password_reset_request_per_user_limit', 'Maximum concurrently active self-serve password reset requests per user', 'coust', 'label') WHERE name = 'circ.password_reset_request_per_user_limit';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('circ.password_reset_request_requires_matching_email','Require matching email address for password reset requests', 'coust', 'label') WHERE name = 'circ.password_reset_request_requires_matching_email';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('circ.password_reset_request_throttle', 'Maximum concurrently active self-serve password reset requests', 'coust', 'label') WHERE name = 'circ.password_reset_request_throttle';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('circ.password_reset_request_time_to_live', 'Self-serve password reset request time-to-live', 'coust', 'label') WHERE name = 'circ.password_reset_request_time_to_live';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('circ.restore_overdue_on_lost_return', 'Restore overdues on lost item return', 'coust', 'label') WHERE name = 'circ.restore_overdue_on_lost_return';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('circ.selfcheck.alert.popup', 'Pop-up alert for errors', 'coust', 'label') WHERE name = 'circ.selfcheck.alert.popup';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('circ.selfcheck.alert.sound', 'Audio Alerts', 'coust', 'label') WHERE name = 'circ.selfcheck.alert.sound';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('circ.selfcheck.block_checkout_on_copy_status','Block copy checkout status', 'coust', 'label') WHERE name = 'circ.selfcheck.block_checkout_on_copy_status';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('circ.selfcheck.patron_login_timeout', 'Patron Login Timeout (in seconds)', 'coust', 'label') WHERE name = 'circ.selfcheck.patron_login_timeout';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('circ.selfcheck.patron_password_required', 'Require Patron Password', 'coust', 'label') WHERE name = 'circ.selfcheck.patron_password_required';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('circ.selfcheck.require_patron_password', 'Require patron password', 'coust', 'label') WHERE name = 'circ.selfcheck.require_patron_password';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('circ.selfcheck.workstation_required', 'Workstation Required', 'coust', 'label') WHERE name = 'circ.selfcheck.workstation_required';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('circ.void_lost_on_checkin', 'Void lost item billing when returned', 'coust', 'label') WHERE name = 'circ.void_lost_on_checkin';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('circ.void_lost_proc_fee_on_checkin', 'Void processing fee on lost item return', 'coust', 'label') WHERE name = 'circ.void_lost_proc_fee_on_checkin';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('credit.processor.authorizenet.enabled', 'Enable AuthorizeNet payments', 'coust', 'label') WHERE name = 'credit.processor.authorizenet.enabled';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('credit.processor.authorizenet.login', 'AuthorizeNet login', 'coust', 'label') WHERE name = 'credit.processor.authorizenet.login';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('credit.processor.authorizenet.password', 'AuthorizeNet password', 'coust', 'label') WHERE name = 'credit.processor.authorizenet.password';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('credit.processor.authorizenet.server', 'AuthorizeNet server', 'coust', 'label') WHERE name = 'credit.processor.authorizenet.server';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('credit.processor.authorizenet.testmode', 'AuthorizeNet test mode', 'coust', 'label') WHERE name = 'credit.processor.authorizenet.testmode';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('credit.processor.default', 'Name default credit processor', 'coust', 'label') WHERE name = 'credit.processor.default';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('credit.processor.payflowpro.enabled', 'Enable PayflowPro payments', 'coust', 'label') WHERE name = 'credit.processor.payflowpro.enabled';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('credit.processor.payflowpro.login', 'PayflowPro login/merchant ID', 'coust', 'label') WHERE name = 'credit.processor.payflowpro.login';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('credit.processor.payflowpro.partner', 'PayflowPro partner', 'coust', 'label') WHERE name = 'credit.processor.payflowpro.partner';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('credit.processor.payflowpro.password', 'PayflowPro password', 'coust', 'label') WHERE name = 'credit.processor.payflowpro.password';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('credit.processor.payflowpro.testmode', 'PayflowPro test mode', 'coust', 'label') WHERE name = 'credit.processor.payflowpro.testmode';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('credit.processor.payflowpro.vendor', 'PayflowPro vendor', 'coust', 'label') WHERE name = 'credit.processor.payflowpro.vendor';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('credit.processor.paypal.enabled', 'Enable PayPal payments', 'coust', 'label') WHERE name = 'credit.processor.paypal.enabled';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('credit.processor.paypal.login', 'PayPal login', 'coust', 'label') WHERE name = 'credit.processor.paypal.login';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('credit.processor.paypal.password', 'PayPal password', 'coust', 'label') WHERE name = 'credit.processor.paypal.password';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('credit.processor.paypal.signature', 'PayPal signature', 'coust', 'label') WHERE name = 'credit.processor.paypal.signature';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('credit.processor.paypal.testmode', 'PayPal test mode', 'coust', 'label') WHERE name = 'credit.processor.paypal.testmode';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext( 'format.date', 'Format Dates with this pattern.', 'coust', 'label') WHERE name = 'format.date';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('format.time','Format Times with this pattern.', 'coust', 'label') WHERE name = 'format.time';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('gui.disable_local_save_columns','Disable the ability to save list column configurations locally.', 'coust', 'label') WHERE name = 'gui.disable_local_save_columns';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('opac.allow_pending_address', 'Allow pending addresses', 'coust', 'label') WHERE name = 'opac.allow_pending_address';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('opac.fully_compressed_serial_holdings', 'Use fully compressed serial holdings', 'coust', 'label') WHERE name = 'opac.fully_compressed_serial_holdings';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('opac.org_unit_hiding.depth','Org Unit Hiding Depth', 'coust', 'label') WHERE name = 'opac.org_unit_hiding.depth';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext( 'org.patron_opt_boundary', 'Patron Opt-In Boundary', 'coust', 'label') WHERE name = 'org.patron_opt_boundary';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext( 'org.patron_opt_default', 'Patron Opt-In Default', 'coust', 'label') WHERE name = 'org.patron_opt_default';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('serial.prev_issuance_copy_location', 'Previous Issuance Copy Location', 'coust', 'label') WHERE name = 'serial.prev_issuance_copy_location';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('ui.admin.patron_log.max_entries', 'Work Log: Maximum Patrons Logged', 'coust', 'label') WHERE name = 'ui.admin.patron_log.max_entries';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('ui.admin.work_log.max_entries', 'Work Log: Maximum Actions Logged', 'coust', 'label') WHERE name = 'ui.admin.work_log.max_entries';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('ui.cat.volume_copy_editor.horizontal','Horizontal layout for Volume/Copy Creator/Editor.','coust', 'label') WHERE name = 'ui.cat.volume_copy_editor.horizontal';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('ui.circ.in_house_use.entry_cap', 'Record In-House Use: Maximum # of uses allowed per entry.', 'coust', 'label') WHERE name = 'ui.circ.in_house_use.entry_cap';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('ui.circ.in_house_use.entry_warn', 'Record In-House Use: # of uses threshold for Are You Sure? dialog.', 'coust', 'label') WHERE name = 'ui.circ.in_house_use.entry_warn';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext( 'ui.circ.suppress_checkin_popups', 'Suppress popup-dialogs during check-in.', 'coust', 'label') WHERE name = 'ui.circ.suppress_checkin_popups';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('ui.general.button_bar', 'Button bar', 'coust', 'label') WHERE name = 'ui.general.button_bar';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('ui.general.hotkeyset', 'Default Hotkeyset', 'coust', 'label') WHERE name = 'ui.general.hotkeyset';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('ui.general.idle_timeout', 'Idle timeout', 'coust', 'label') WHERE name = 'ui.general.idle_timeout';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('ui.patron.default_country','Default Country for New Addresses in Patron Editor', 'coust', 'label') WHERE name = 'ui.patron.default_country';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('ui.patron.default_ident_type','Default Ident Type for Patron Registration', 'coust', 'label') WHERE name = 'ui.patron.default_ident_type';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('ui.patron.edit.aua.county.require', 'Require county field on patron registration', 'coust', 'label') WHERE name = 'ui.patron.edit.aua.county.require';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('ui.patron.edit.au.active.show', 'Show active field on patron registration', 'coust', 'label') WHERE name = 'ui.patron.edit.au.active.show';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('ui.patron.edit.au.active.suggest', 'Suggest active field on patron registration', 'coust', 'label') WHERE name = 'ui.patron.edit.au.active.suggest';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('ui.patron.edit.au.alert_message.show', 'Show alert_message field on patron registration', 'coust', 'label') WHERE name = 'ui.patron.edit.au.alert_message.show';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('ui.patron.edit.au.alert_message.suggest', 'Suggest alert_message field on patron registration', 'coust', 'label') WHERE name = 'ui.patron.edit.au.alert_message.suggest';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('ui.patron.edit.au.alias.show', 'Show alias field on patron registration', 'coust', 'label') WHERE name = 'ui.patron.edit.au.alias.show';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('ui.patron.edit.au.alias.suggest', 'Suggest alias field on patron registration', 'coust', 'label') WHERE name = 'ui.patron.edit.au.alias.suggest';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('ui.patron.edit.aua.post_code.example', 'Example for post_code field on patron registration', 'coust', 'label') WHERE name = 'ui.patron.edit.aua.post_code.example';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('ui.patron.edit.aua.post_code.regex', 'Regex for post_code field on patron registration', 'coust', 'label') WHERE name = 'ui.patron.edit.aua.post_code.regex';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('ui.patron.edit.au.barred.show', 'Show barred field on patron registration', 'coust', 'label') WHERE name = 'ui.patron.edit.au.barred.show';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('ui.patron.edit.au.barred.suggest', 'Suggest barred field on patron registration', 'coust', 'label') WHERE name = 'ui.patron.edit.au.barred.suggest';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('ui.patron.edit.au.claims_never_checked_out_count.show', 'Show claims_never_checked_out_count field on patron registration', 'coust', 'label') WHERE name = 'ui.patron.edit.au.claims_never_checked_out_count.show';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('ui.patron.edit.au.claims_never_checked_out_count.suggest', 'Suggest claims_never_checked_out_count field on patron registration', 'coust', 'label') WHERE name = 'ui.patron.edit.au.claims_never_checked_out_count.suggest';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('ui.patron.edit.au.claims_returned_count.show', 'Show claims_returned_count field on patron registration', 'coust', 'label') WHERE name = 'ui.patron.edit.au.claims_returned_count.show';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('ui.patron.edit.au.claims_returned_count.suggest', 'Suggest claims_returned_count field on patron registration', 'coust', 'label') WHERE name = 'ui.patron.edit.au.claims_returned_count.suggest';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('ui.patron.edit.au.day_phone.example', 'Example for day_phone field on patron registration', 'coust', 'label') WHERE name = 'ui.patron.edit.au.day_phone.example';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('ui.patron.edit.au.day_phone.regex', 'Regex for day_phone field on patron registration', 'coust', 'label') WHERE name = 'ui.patron.edit.au.day_phone.regex';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('ui.patron.edit.au.day_phone.require', 'Require day_phone field on patron registration', 'coust', 'label') WHERE name = 'ui.patron.edit.au.day_phone.require';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('ui.patron.edit.au.day_phone.show', 'Show day_phone field on patron registration', 'coust', 'label') WHERE name = 'ui.patron.edit.au.day_phone.show';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('ui.patron.edit.au.day_phone.suggest', 'Suggest day_phone field on patron registration', 'coust', 'label') WHERE name = 'ui.patron.edit.au.day_phone.suggest';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('ui.patron.edit.au.dob.calendar', 'Show calendar widget for dob field on patron registration', 'coust', 'label') WHERE name = 'ui.patron.edit.au.dob.calendar';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('ui.patron.edit.au.dob.require', 'Require dob field on patron registration', 'coust', 'label') WHERE name = 'ui.patron.edit.au.dob.require';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('ui.patron.edit.au.dob.show', 'Show dob field on patron registration', 'coust', 'label') WHERE name = 'ui.patron.edit.au.dob.show';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('ui.patron.edit.au.dob.suggest', 'Suggest dob field on patron registration', 'coust', 'label') WHERE name = 'ui.patron.edit.au.dob.suggest';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('ui.patron.edit.au.email.example', 'Example for email field on patron registration', 'coust', 'label') WHERE name = 'ui.patron.edit.au.email.example';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('ui.patron.edit.au.email.regex', 'Regex for email field on patron registration', 'coust', 'label') WHERE name = 'ui.patron.edit.au.email.regex';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('ui.patron.edit.au.email.require', 'Require email field on patron registration', 'coust', 'label') WHERE name = 'ui.patron.edit.au.email.require';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('ui.patron.edit.au.email.show', 'Show email field on patron registration', 'coust', 'label') WHERE name = 'ui.patron.edit.au.email.show';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('ui.patron.edit.au.email.suggest', 'Suggest email field on patron registration', 'coust', 'label') WHERE name = 'ui.patron.edit.au.email.suggest';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('ui.patron.edit.au.evening_phone.example', 'Example for evening_phone field on patron registration', 'coust', 'label') WHERE name = 'ui.patron.edit.au.evening_phone.example';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('ui.patron.edit.au.evening_phone.regex', 'Regex for evening_phone field on patron registration', 'coust', 'label') WHERE name = 'ui.patron.edit.au.evening_phone.regex';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('ui.patron.edit.au.evening_phone.require', 'Require evening_phone field on patron registration', 'coust', 'label') WHERE name = 'ui.patron.edit.au.evening_phone.require';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('ui.patron.edit.au.evening_phone.show', 'Show evening_phone field on patron registration', 'coust', 'label') WHERE name = 'ui.patron.edit.au.evening_phone.show';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('ui.patron.edit.au.evening_phone.suggest', 'Suggest evening_phone field on patron registration', 'coust', 'label') WHERE name = 'ui.patron.edit.au.evening_phone.suggest';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('ui.patron.edit.au.ident_value2.show', 'Show ident_value2 field on patron registration', 'coust', 'label') WHERE name = 'ui.patron.edit.au.ident_value2.show';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('ui.patron.edit.au.ident_value2.suggest', 'Suggest ident_value2 field on patron registration', 'coust', 'label') WHERE name = 'ui.patron.edit.au.ident_value2.suggest';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('ui.patron.edit.au.ident_value.show', 'Show ident_value field on patron registration', 'coust', 'label') WHERE name = 'ui.patron.edit.au.ident_value.show';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('ui.patron.edit.au.ident_value.suggest', 'Suggest ident_value field on patron registration', 'coust', 'label') WHERE name = 'ui.patron.edit.au.ident_value.suggest';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('ui.patron.edit.au.juvenile.show', 'Show juvenile field on patron registration', 'coust', 'label') WHERE name = 'ui.patron.edit.au.juvenile.show';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('ui.patron.edit.au.juvenile.suggest', 'Suggest juvenile field on patron registration', 'coust', 'label') WHERE name = 'ui.patron.edit.au.juvenile.suggest';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('ui.patron.edit.au.master_account.show', 'Show master_account field on patron registration', 'coust', 'label') WHERE name = 'ui.patron.edit.au.master_account.show';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('ui.patron.edit.au.master_account.suggest', 'Suggest master_account field on patron registration', 'coust', 'label') WHERE name = 'ui.patron.edit.au.master_account.suggest';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('ui.patron.edit.au.other_phone.example', 'Example for other_phone field on patron registration', 'coust', 'label') WHERE name = 'ui.patron.edit.au.other_phone.example';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('ui.patron.edit.au.other_phone.regex', 'Regex for other_phone field on patron registration', 'coust', 'label') WHERE name = 'ui.patron.edit.au.other_phone.regex';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('ui.patron.edit.au.other_phone.require', 'Require other_phone field on patron registration', 'coust', 'label') WHERE name = 'ui.patron.edit.au.other_phone.require';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('ui.patron.edit.au.other_phone.show', 'Show other_phone field on patron registration', 'coust', 'label') WHERE name = 'ui.patron.edit.au.other_phone.show';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('ui.patron.edit.au.other_phone.suggest', 'Suggest other_phone field on patron registration', 'coust', 'label') WHERE name = 'ui.patron.edit.au.other_phone.suggest';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('ui.patron.edit.au.second_given_name.show', 'Show second_given_name field on patron registration', 'coust', 'label') WHERE name = 'ui.patron.edit.au.second_given_name.show';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('ui.patron.edit.au.second_given_name.suggest', 'Suggest second_given_name field on patron registration', 'coust', 'label') WHERE name = 'ui.patron.edit.au.second_given_name.suggest';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('ui.patron.edit.au.suffix.show', 'Show suffix field on patron registration', 'coust', 'label') WHERE name = 'ui.patron.edit.au.suffix.show';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('ui.patron.edit.au.suffix.suggest', 'Suggest suffix field on patron registration', 'coust', 'label') WHERE name = 'ui.patron.edit.au.suffix.suggest';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('ui.patron.edit.default_suggested', 'Default showing suggested patron registration fields', 'coust', 'label') WHERE name = 'ui.patron.edit.default_suggested';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('ui.patron.edit.phone.example', 'Example for phone fields on patron registration', 'coust', 'label') WHERE name = 'ui.patron.edit.phone.example';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('ui.patron.edit.phone.regex', 'Regex for phone fields on patron registration', 'coust', 'label') WHERE name = 'ui.patron.edit.phone.regex';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('ui.patron.registration.require_address','Require at least one address for Patron Registration', 'coust', 'label') WHERE name = 'ui.patron.registration.require_address';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('ui.staff.require_initials', 'Require staff initials for entry/edit of item/patron/penalty notes/messages.', 'coust', 'label') WHERE name = 'ui.staff.require_initials';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext( 'ui.unified_volume_copy_editor', 'Unified Volume/Item Creator/Editor', 'coust', 'label') WHERE name = 'ui.unified_volume_copy_editor';
UPDATE config.org_unit_setting_type SET label = oils_i18n_gettext('url.remote_column_settings','URL for remote directory containing list column settings.', 'coust', 'label') WHERE name = 'url.remote_column_settings';

COMMIT;
