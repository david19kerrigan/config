// an example to create a new mapping `ctrl-y`
api.mapkey('<ctrl-y>', 'Show me the money', function() {
    Front.showPopup('a well-known phrase uttered by characters in the 1996 film Jerry Maguire (Escape to close).');
});

// an example to replace `T` with `gt`, click `Default mappings` to see how `T` works.
api.map('gt', 'T');

// an example to remove mapkey `Ctrl-i`
api.unmap('<ctrl-i>');

// Adjust scroll
settings.smoothScroll = false;
settings.scrollStepSize = 140;

//Add searx
settings.defaultSearchEngine = 's'
api.addSearchAlias('s', 'Searx', 'https://searx.be/?q=', function(response) {
    var res = JSON.parse(response.text);
    return res.map(function(r){
        return r.phrase;
    });
});

// Change some settings to be more like native vim

const {
    Clipboard,
    Front,
    Hints,
    Normal,
    RUNTIME,
    Visual,
    aceVimMap,
    addSearchAlias,
    cmap,
    getClickableElements,
    imap,
    imapkey,
    iunmap,
    map,
    mapkey,
    readText,
    removeSearchAlias,
    tabOpenLink,
    unmap,
    unmapAllExcept,
    vmapkey,
    vunmap
} = api;

// ---- Settings ----
Hints.setCharacters('asdfgyuiopqwertnmzxcvb');

settings.hintAlign = 'left';
settings.omnibarPosition = 'bottom';
settings.focusFirstCandidate = false;
settings.tabsThreshold = 0;
settings.modeAfterYank = 'Normal';

map('F', 'cf')
map('o', 'go')

// set dark theme
settings.theme = `
.sk_theme {
    font-family: Input Sans Condensed, Charcoal, sans-serif;
    font-size: 10pt;
    background: #333333;
    color: #FFFFFF;
}
.sk_theme tbody {
    color: #abb2bf;
}
.sk_theme input {
    color: #fff;
}
.sk_theme .url {
    color: #d0d0d0;
}
.sk_theme .annotation {
    color: #61afef;
}
.sk_theme .omnibar_highlight {
    color: #56b6c2;
}
.sk_theme .omnibar_timestamp {
    color: #528bff;
}
.sk_theme .omnibar_visitcount {
    color: #e5c07b;
}
.sk_theme #sk_omnibarSearchResult ul li:nth-child(odd) {
    background: #333333;
}
.sk_theme #sk_omnibarSearchResult ul li.focused {
    background: #FFFFFF;
}
#sk_status, #sk_find {
    font-size: 20pt;
}`;
// click `Save` button to make above settings to take effect.</ctrl-i></ctrl-y>
