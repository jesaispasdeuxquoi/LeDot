// Disabling RFP. Stuttering issues...
user_pref("privacy.resistFingerprinting", false);

// Pixiv loading issue
user_pref("network.http.referer.XOriginTrimmingPolicy", 0);
user_pref("network.http.referer.XOriginPolicy", 0);

// Remove top right arrow called "list all tab"
user_pref("browser.tabs.tabmanager.enabled", false);

//Reenable search engines
user_pref("keyword.enabled", true);

//Hide "Enable DRM" message"
user_pref("browser.eme.ui.enabled", false);

// Remove Addons icon 
user_pref("extensions.unifiedExtensions.enabled", false);

//Reenable search engines
user_pref("browser.sessionstore.restore_tabs_lazily", false);
user_pref("browser.sessionstore.restore_on_demand", false);
user_pref("browser.sessionstore.resume_from_crash", false);

//Enable Search Engine suggestion
user_pref("browser.search.suggest.enabled", false);
user_pref("browser.urlbar.suggest.searches", false);

//Homepage
user_pref("browser.startup.homepage", "/home/leo/.mozilla/homepage/index.html");  //set the homepage directory
user_pref("browser.startup.page", 1);

//Firefox stores passwords in plain text and obsolete if you use a password manager.
//Mozilla also told people to stop using their password manager.
user_pref("signon.rememberSignons", false);

//Disable Pocket, it's proprietary trash
user_pref("extensions.pocket.enabled", false);

// Disable Mozilla account
user_pref("identity.fxaccounts.enabled", false);

// Disable letterborxing
user_pref("privacy.resistFingerprinting.letterboxing", false);

// Force-enable hardware acceleration.
user_pref("gfx.webrender.enabled", true);
user_pref("gfx.webrender.force-disabled", false);
user_pref("gfx.webrender.all", true);
user_pref("layers.acceleration.force-enabled", true);
user_pref("layers.force-active", true);
user_pref("media.hardware-video-decoding.force-enabled", true);
user_pref("media.ffmpeg.vaapi.enabled", true); 
user_pref("media.ffvpx.enabled", false);
// user_pref("media.rdd-process.enabled", false); 

// Enable UserChrome/UserContent.
user_pref("toolkit.legacyUserProfileCustomizations.stylesheets", true);

// Disable pocket
user_pref("browser.pocket.enabled", false);
user_pref("extensions.pocket.enabled", false);

