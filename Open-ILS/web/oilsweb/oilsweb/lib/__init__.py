from oilsweb.lib.context import Context, SubContext, ContextItem
import osrf.ses, oils.utils.csedit, pylons.config

class CoreContext(SubContext):
    def __init__(self):
        self.prefix = ContextItem() # web prefi
        self.media_prefix = ContextItem() # media prefix
        self.ac_prefix = ContextItem() # added content prefix
        self.skin = ContextItem() # web skin
        self.theme = ContextItem() # web theme
        self.authtoken = ContextItem(cgi_name='ses') # authtoken string
        self.user = ContextItem() # logged in user object
        self.workstation = ContextItem() # workstation object

    def postinit(self):
        import pylons.config
        self.prefix = pylons.config['oils_prefix']
        self.media_prefix = pylons.config['oils_media_prefix']
        self.ac_prefix = pylons.config['oils_added_content_prefix']

        self.skin = 'default' # XXX
        self.theme = 'default' # XXX

        self.fetchUser()

    def fetchUser(self):
        ''' Grab the logged in user and their workstation '''
        if self.authtoken:
            self.user = osrf.ses.AtomicRequest(
                'open-ils.auth', 
                'open-ils.auth.session.retrieve', self.authtoken)
            self.workstation = oils.utils.csedit.CSEditor().retrieve_actor_workstation(self.user.wsid())
        
Context.applySubContext('core', CoreContext)

