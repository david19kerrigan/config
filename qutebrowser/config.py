config.load_autoconfig(False)
config.bind('j', "scroll-page 0 .15")
config.bind('k', "scroll-page 0 -.15") 
config.bind('R', "tab-next")
config.bind('E', "tab-prev")
config.bind('S', 'back')
config.bind('D', 'forward')
config.bind('x', 'tab-close')
config.bind('e', "scroll-page 0 -.5") 
config.bind('d', "scroll-page 0 .5") 
config.bind('t', 'open -t')
c.colors.webpage.bg = "#242424"
c.colors.webpage.darkmode.enabled = True
c.url.default_page = "about:blank"
c.url.searchengines = { "DEFAULT" : "https://searx.be/search?q={}" }
c.url.start_pages = "about:blank"
c.content.blocking.method = "both"
c.statusbar.show = "in-mode"
c.tabs.show = "always"

import qutebrowser.api.interceptor
def rewrite(request: qutebrowser.api.interceptor.Request):
    if request.request_url.host() == 'www.reddit.com':
        request.request_url.setHost('old.reddit.com')
        try:
            request.redirect(request.request_url)
        except:
            pass
qutebrowser.api.interceptor.register(rewrite)
