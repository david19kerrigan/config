// ==UserScript==
// @name Mediablock
// @description Closes social media from 7 AM to 6 PM inclusive on weekdays, 6 AM to 10 AM Saturdays, and completely free on Sundays!
// @include https://*.youtube.com
// @include https://*.youtube.com/*
// @include https://yewtu.be
// @include https://yewtu.be/*
// @include https://vid.puffyan.us
// @include https://vid.puffyan.us/*
// @include https://invidious.io.lol
// @include https://invidious.io.lol/*
// @include https://piped.video
// @include https://piped.video/*
// @include https://piped.kavin.rocks
// @include https://piped.kavin.rocks/*
// @run-at document-start
// @namespace https://greasyfork.org/users/12417
// @version 0.0.1.20151125025222
// ==/UserScript==

// For any further inquiries, please contact me at scratch.mit.edu/users/iamunknown2 or reddit/u/iamunknowntwo
function block() // Function will block the website.
{
    var current = window.location.href;
    window.history.back(); // Attempt to go back (if it's opened in a tab with no tab history)
    if (window.location.href == current) // If it's still there
    {
        window.close(); // Attempt to close page
        if (window.location.href == current) // If it's still there (if it's the only tab)
        {
            window.location.href = "about://newtab"; // Go to a new tab; always works!
        }
    }
}

block()
