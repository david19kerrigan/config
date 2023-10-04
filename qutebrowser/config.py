config.load_autoconfig(False)
config.bind('j', "scroll-page 0 .15")
config.bind('k', "scroll-page 0 -.15") 
config.bind('r', "tab-next")
config.bind('<Ctrl+r>', "reload")
config.bind('w', "tab-prev")
config.bind('a', 'back')
config.bind('s', 'forward')
config.bind('<Ctrl+d>', 'tab-close')
config.bind('x', 'tab-close')
config.bind('e', "scroll-page 0 -.5") 
config.bind('d', "scroll-page 0 .5") 
#config.bind('t', 'cmd-set-text -s :open -t ')
config.bind('t', 'set-cmd-text -s :open -t ')
config.bind('H', ':open file:///home/david/.config/qutebrowser/startpage/index.html')
#config.bind('t', 'open -t')
config.bind('M', 'hint links spawn mpv {hint-url}')
config.unbind('<Ctrl+q>')
config.unbind('<Ctrl+w>')
c.colors.webpage.bg = "#242424"
c.colors.webpage.darkmode.enabled = True
c.url.default_page = "file:///home/david/.config/qutebrowser/startpage/index.html"
c.hints.chars = "asdfghjklruvneiwo"
c.hints.uppercase = True
#c.url.searchengines = { "DEFAULT" : "https://searx.be/search?q={}" }
c.url.searchengines = { "DEFAULT" : "https://searx.tiekoetter.com/search?q={}" }
#c.url.searchengines = { "DEFAULT" : "https://search.brave.com/search?q={}" }

c.url.start_pages = "file:///home/david/.config/qutebrowser/startpage/index.html"
c.content.blocking.method = "both"
c.statusbar.show = "always"
c.tabs.show = "always"
c.content.local_content_can_access_remote_urls = True
c.input.insert_mode.plugins = True

import qutebrowser.api.interceptor

def rewrite(request: qutebrowser.api.interceptor.Request):
    if request.request_url.host() == 'www.youtube.com':
        request.request_url.setHost('yewtu.be')
        try:
            request.redirect(request.request_url)
        except:
            pass
qutebrowser.api.interceptor.register(rewrite)

def rewrite1(request: qutebrowser.api.interceptor.Request):
    if request.request_url.host() == 'www.reddit.com':
        request.request_url.setHost('old.reddit.com')
        #request.request_url.setHost('reddit.invak.id')
        try:
            request.redirect(request.request_url)
        except:
            pass
qutebrowser.api.interceptor.register(rewrite1)

def rewrite2(request: qutebrowser.api.interceptor.Request):
    if request.request_url.host() == 'en.wikipedia.org':
        request.request_url.setHost('wikiless.tiekoetter.com')
        try:
            request.redirect(request.request_url)
        except:
            pass
qutebrowser.api.interceptor.register(rewrite2)

def rewrite3(request: qutebrowser.api.interceptor.Request):
    if request.request_url.host() == 'stackoverflow.com':
        request.request_url.setHost('code.whatever.social')
        try:
            request.redirect(request.request_url)
        except:
            pass
qutebrowser.api.interceptor.register(rewrite3)
