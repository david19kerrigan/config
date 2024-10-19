/* override recipe: enable session restore ***/
user_pref("browser.startup.page", 3); // 0102
user_pref("browser.privatebrowsing.autostart", false); // 0110 required if you had it set as true
user_pref("browser.sessionstore.privacy_level", 0); // 1003 optional to restore cookies/formdata
user_pref("privacy.clearOnShutdown.history", false); // 2811 FF127 or lower
user_pref("privacy.clearOnShutdown_v2.historyFormDataAndDownloads", false); // 2811 FF128+

// 2820 optional to match when you use settings>Cookies and Site Data>Clear Data
user_pref("privacy.clearSiteData.historyFormDataAndDownloads", false); // FF128+

// 2830 optional to match when you use Ctrl-Shift-Del (settings>History>Custom Settings>Clear History)
user_pref("privacy.cpd.history", false); // FF127 or lower
user_pref("privacy.clearHistory.historyFormDataAndDownloads", false); // FF128+
user_pref("browser.display.use_document_fonts", 0)
