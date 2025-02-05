// Mozilla Thunderbird user preferences

// Use plain text (no fixed width)
user_pref("mail.html_compose", false);
user_pref("mail.identity.default.compose_html", false);
user_pref("mail.fixed_width_messages", false);

// No quote
user_pref("mail.identity.default.auto_quote", false);

// Sort descending
user_pref("mailnews.default_sort_order", 2);

// ISO Date format
user_pref("intl.date_time.pattern_override.date_short", "yyyy-MM-dd");

// Calendar settings
user_pref("calendar.week.start", 1);
user_pref("calendar.view.daystarthour", 9);
user_pref("calendar.view.dayendhour", 19);
user_pref("calendar.view.visiblehours", 12);

// Font settings
user_pref("font.name.monospace.x-western", "Inter");
user_pref("font.name.sans-serif.x-western", "Inter");
user_pref("font.size.monospace.x-western", 17);
user_pref("font.size.variable.x-western", 17);

// Disable local address books
user_pref("ldap_2.servers.history.dirType", -1);
user_pref("ldap_2.servers.pab.dirType", -1);

// Don't archive in year folders
user_pref("mail.identity.default.archive_granularity", 0);

// Download all folders
user_pref("mail.server.default.check_all_folders_for_new", true);
