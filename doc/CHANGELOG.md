# Changelog

## RedMica 1.3.1 - 2021-11-05

* Defect redmine-34694: Progress bar for a shared version on gantt disappears when the tree is collapsed and then expanded
* Defect redmine-34834: Line breaks in the description of a custom field are ignored in a tooltip
* Defect redmine-34856: Time entry error on private issue
* Defect redmine-35417: User sessions not reset after 2FA activation
* Defect redmine-35441: Inline image in Textile is not displayed if the image URL contains ampersands
* Defect redmine-35463: Enforce stricter class filtering in WatchersController
* Defect redmine-35606: Locked users should not be displayed in the members box of the project overview page
* Defect redmine-35621: Bundler fails to install globalid when using Ruby < 2.6.0
* Defect redmine-35634: Attachments deletable even though issue edit not permitted
* Defect redmine-35642: Long text custom field values are not aligned with their labels
* Defect redmine-35655: Create duplicated follows relations fails with 500 internal error
* Defect redmine-35669: Prints of Issues Report details are messed-up due to the size of the graphs
* Defect redmine-35715: File upload fails when run with uWSGI
* Defect redmine-35731: Password and Confirmation fields are marked as required when editing a user
* Defect redmine-35789: Redmine is leaking usernames on activities index view
* Defect redmine-35827: Deleting a closed or archived project returns 403
* Patch redmine-34979: French translation update for 4.2-stable
* Patch redmine-35111: Russian translation update for 4.2-stable
* Patch redmine-35267: German translation update (jstoolbar-de.js)
* Patch redmine-35372: Better presentation for 2FA recovery codes
* Patch redmine-35375: German translation of wiki syntax help file
* Patch redmine-35539: Race condition (possible filename collision)  in Attachment.disk_filename
* Patch redmine-35662: Mongolian translation update for "Notes", "Totals", and "% Done"
* Patch redmine-35677: Preserve leading white space when quoting using the JS toolbar

## RedMica 1.3.0 - 2021-05-31

### Accounts / authentication

* Defect redmine-35226: Add SameSite=Lax to cookies to fix warnings in web browsers
* Patch redmine-34071: Handle AuthSourceExceptions in User.try_to_login

### Activity view

* Feature redmine-32248: Change the default value for "Days displayed on project activity" setting to 10
* Feature redmine-33602: Add an interface to filter activities by user

### Administration

* Feature redmine-34258: Create tracker by copy
* Feature redmine-34307: Create custom field by copy

### Attachments

* Defect redmine-33459: The order of thumbnails in journals does not match the order of file name list
* Defect redmine-33752: Uploading a big file fails with NoMemoryError
* Defect redmine-34999: The result of Attachment.latest_attach is unstable if attachments have the same timestamp
* Feature redmine-30776: Drag and drop file upload to file type custom field
* Feature redmine-32898: PDF thumbnails support on Windows

### Code cleanup/refactoring

* Feature redmine-34337: Remove jQuery Migrate
* Patch redmine-32054: Add test for 4 byte characters (emoji) support
* Patch redmine-33268: Add missing test: ProjectCustomField creation
* Patch redmine-34119: Fix selenium chrome options so files are downloaded to tmp/downloads in system tests
* Patch redmine-34269: Allow system tests to run on remote Selenium hub (eg: Docker)
* Patch redmine-34321: Add missing fixtures to AttachmentsControllerTest
* Patch redmine-34444: Remove unused key :preview from Redmine::AccessKeys::ACCESSKEYS
* Patch redmine-34492: Fix passing a wrong parameter to assert_select in API test for 'GET /users/:id'
* Patch redmine-34745: Remove unused i18n key "text_min_max_length_info"
* Patch redmine-34750: Remove unsupported encodings ISO-2022-KR and ISCII91 from Setting::ENCODINGS
* Patch redmine-34789: Fix misplaced comment in config/settings.yml
* Patch redmine-34976: Add missing fixtures to TimeEntryCustomFieldTest
* Patch redmine-35026: Remove rake task check_parsing_by_psych
* Patch redmine-35075: Use named routes in base layout and account sidebar
* Patch redmine-35076: Menu manager - generate correct URLs when rendering from a namespaced controller
* Patch redmine-35208: Use `Time.use_zone` instead of `Time.zone=`
* Patch redmine-35230: Fix typo in ApplicationHelper.html_title comment

### Custom fields

* Defect redmine-33930: 500 error when attempting to create custom field enumeration with empty name
* Defect redmine-35115: Time entries are broken if grouped by project and issue custom fields

### Gems support

* Patch redmine-34443: Update roadie-rails to 2.2
* Patch redmine-34579: Use 'webdrivers' gem to manage the Chrome driver for system tests
* Patch redmine-34619: Update Nokogiri to 1.11
* Patch redmine-35136: Update RuboCop to 1.15
* Patch redmine-35142: Update RuboCop Performance to 1.11
* Patch redmine-35207: Update RuboCop Rails to 2.10

### Email notifications

* Defect redmine-32199: Security notification is not sent when an admin changes the password of a user
* Defect redmine-35017: X-Redmine-Issue-Assignee email header field is empty when the assignee of an issue is a group
* Feature redmine-34787: Ability to set default value for  "I don't want to be notified of changes that I make myself"

### Email receiving

* Feature redmine-34794: Allow newlines and quote characters within mail body delimiters

### Forums

* Feature redmine-3390: Ability to add watchers to forum threads
* Defect redmine-32156: No left padding for first level entries in discussion board list

### Gems support

* Patch redmine-34339: Update net-ldap to 0.17

### I18n

* Defect redmine-33232: Hard-coded error messages in ApplicationController

### Importers

* Feature redmine-34762: Display more detailed error message when attempting to import malformed CSV file

### Issues

* Defect redmine-10084: Disabled trackers of subprojects are listed in project overview
* Defect redmine-33419: Show only valid projects on issue form when the issue is a subtask
* Defect redmine-34982: Cannot change the default version and default assignee under settings
* Feature redmine-33418: Bulk addition of related issues
* Feature redmine-34303: Allow to add subtask from context menu
* Feature redmine-34798: Show project tree instead of subprojects in the project selector when you create a new issue
* Patch redmine-33329: Improve watchers functionality to mark the users that are watching a non visible object and to not return watchers that cannot see the object
* Patch redmine-33337: Clean-up workflows controller

### Issues filter

* Defect redmine-35201: Duplicate entries in issue filter values
* Feature redmine-5893: Filter issues by notes
* Patch redmine-35312: Gracefully handle invalid operators and associations requested in queries

### Issues list

* Feature redmine-34932: "Copy link" feature for issues list

### Performance

* Patch redmine-34399: Use sum { ... } instead of map { ... }.sum

### Permissions and roles

* Feature redmine-13767: Export permissions report to CSV

### Plugin API

* Defect redmine-33290: Unnecessary database access when IssueQuery class is defined

### Project settings

* Defect redmine-34032: Project settings tab contains two items with the same id

### Projects

* Defect redmine-33733: No trackers are selected for new projects

### REST API

* Defect redmine-11870: Users can delete their own accounts unconditionally via REST API
* Defect redmine-30121: Projects API should not return invisible trackers
* Defect redmine-35039: API create issue relation method returns undefined method `split' when issue id is sent as integer
* Feature redmine-22008: Associated Revision API
* Feature redmine-24976: Include new statuses allowed by workflow in Issues REST API
* Feature redmine-34242: Include two-factor authentication scheme in users API response

### Roadmap

* Defect redmine-34983: Roadmap tab is missing if there are only inherited from parent project versions

### SCM

* Feature redmine-16849: Render Textile and Markdown files in the repository browser
* Feature redmine-8875: Allow manually fetching changesets

### SEO

* Feature redmine-33658: robots.txt: disallow crawling login, register, and lost password form

### Text formatting

* Defect redmine-27780: Case-insensitive matching fails for Unicode filenames when referring to attachments in text formatting
* Defect redmine-35036: Markdown text sections broken by thematic breaks (horizontal rules)

### Time tracking

* Defect redmine-33952: Spent time details are displayed in incorrect order when sorted by week and date

### Translations

* Defect redmine-32857: Fix grammatical agreement in translation for "parent issue" in pt and pt-BR
* Defect redmine-34456: Fix Japanese translation for less_than_x_seconds and less_than_x_minutes
* Defect redmine-35319: Wrong Japanese translation for permission_delete_message_watchers
* Patch redmine-34418: Unify the translation of the word "relation" in Czech
* Patch redmine-34659: Change Traditional Chinese translation for "watch" and "watcher"
* Patch redmine-35016: French translations for two-factor authentication

### UI

* Defect redmine-34580: Custom field labels do not contain class "error" when the field value is invalid
* Defect redmine-34805: Activity tab in cross-project menu is sometimes broken
* Feature redmine-28392: Improve wiki headings style
* Feature redmine-30459: Switch edit/preview tabs with keyboard shortcuts
* Feature redmine-33167: "Add news" button in cross-project News tab
* Feature redmine-33820: Auto complete wiki page links
* Feature redmine-34340: Make archived projects visually distinguishable in nested projects lists
* Feature redmine-34417: Require explicit confirmation when deleting a user or a project
* Feature redmine-34549: Add keyboard shortcuts for wiki toolbar buttons
* Feature redmine-34703: "Copy link" feature for issue and issue journal
* Feature redmine-34714: Move delete button for issues and journals to the dropdown menu

### Wiki

* Feature redmine-32629: Add edit button to Wiki sidebar
* Feature redmine-7652: Ability to add watchers to Wiki pages

## RedMica 1.2.2 - 2021-05-15

* Defect redmine-34367: Allowed filename extensions of attachments can be circumvented
* Defect redmine-34894: User link using @ not working at the end of line
* Defect redmine-34921: Do not journalize attachments that are added during a "Copy Issue" operation
* Defect redmine-34933: Atom feed of the activity page does not contain items after the second page
* Defect redmine-34950: SysController and MailHandlerController are vulnerable to timing attack
* Defect redmine-34998: Cannot open journal dropdown menu after editing note
* Defect redmine-35045: Mail handler bypasses add_issue_notes permission
* Defect redmine-35085: Arbitrary file read in Git adapter
* Defect redmine-35087: Users without two-factor authentication enabled cannot sign out when two-factor authentication is required
* Defect redmine-35100: MailHandler raises NameError exception when generating error message
* Defect redmine-35131: Issue import - allow auto mapping for Unique ID and relation type fields
* Defect redmine-35135: FrozenError when new LDAP users try to login
* Feature redmine-34942: Support for Git repositories with default branch "main"
* Patch redmine-34955: Update copyright year in the footer to 2021
* Patch redmine-35214: Update Rails to 5.2.6
* Patch redmine-34969: Remove dependency on MimeMagic
* Patch redmine-35034: Improve loading speed of workflow page

## RedMica 1.2.1 - 2021-03-21

* Defect redmine-33206: Unable to autoload constant Version.table_name if gems uses Version class
* Defect redmine-33338: Property changes tab does not show journals with both property changes and notes
* Defect redmine-33355: TypeError when attempting to update a user with a blank email address
* Defect redmine-33360: Names of private projects are leaked by issue journal details that contain project_id changes
* Defect redmine-33548: Column header is clickable even when the column is not actually sortable
* Defect redmine-33550: Per role visibility settings for spent time custom fields is not properly checked
* Defect redmine-33846: Inline issue auto complete doesn't sanitize HTML tags
* Defect redmine-34247: Web browser freezes when displaying workflow page with a large number of issue statuses
* Defect redmine-34297: Subprojects issues are not displayed on main project when all subprojects are closed
* Defect redmine-34326: CSV import raises an exception if CSV header has empty columns
* Defect redmine-34375: "is not" operator for Subproject filter incorrectly excludes closed subprojects
* Defect redmine-34447: Typo in translation string 'setting_issue_list_default_columns': s//Isuses/Issues
* Defect redmine-34615: 'Search' falsy parameters are not respected
* Defect redmine-34618: Cannot sign in when both enabling two-factor authentication and changing password are required
* Feature redmine-15212: Atom feed on project with subprojects should show in article title the name of the project
* Feature redmine-18555: Show warning when attempting to attach more than the allowed number of attachments
* Feature redmine-33906: Upgrade Rails to 5.2.4.5
* Feature redmine-34123: System tests for inline auto complete feature
* Feature redmine-34495: Don't show "Two-factor authentication" on new user form
* Patch redmine-34439: Spanish translation update for 4.1-stable
* Patch redmine-34461: Update Redcarpet to 3.5.1
* Patch redmine-34479: Fix possible race condition with parallel, identical file uploads
* Patch redmine-34595: Filter list of recent projects in the project jump box
* Patch redmine-34700: Allow to use watch_by filter in the global issues list

## RedMica 1.2.0 - 2020-11-18

Based on Redmine 4.1.1.devel.20401.

### Accounts / authentication

* Defect redmine-33601: Additional email addresses are not displayed in user profile page
* Feature redmine-1237: Add support for two-factor authentication
* Feature redmine-34241:  Include twofa_scheme (two-factor scheme) column when exporting users to CSV
* Patch redmine-33929: Encrypt / decrypt TOTP secret keys with `rake db:encrypt` / `rake db:decrypt`

### Activity view

* Feature redmine-1422: Date selection for Activity Page
* Feature redmine-33692: Improved view of the activity page

### Code cleanup/refactoring

* Defect redmine-33562: Some tests in ApplicationHelperTest are declared as private
* Feature redmine-33383: Update jQuery to 3.5.1
* Patch redmine-33315: IssuesSystemTest#test_bulk_watch_issues_via_context_menu randomly fails due to Capybara clicks out out of context menu
* Patch redmine-33567: Fix typo in watchers_controller.rb
* Patch redmine-33700: Add missing fixture to Redmine::ApiTest::ProjectsTest
* Patch redmine-33728: Remove an unused variable in Query#add_chained_custom_field_filters
* Patch redmine-33785: Add missing fixture to TimelogControllerTest
* Patch redmine-33786: Add missing fixture to UsersControllerTest
* Patch redmine-34122: Store inline autocomplete data sources in a JS variable
* Patch redmine-34166: Fix wrong comment for Mailer.deliver_lost_password
* Patch redmine-34169: MessagesControllerTest#test_post_new randomly fails

### Documentation

* Defect redmine-33939: Unnecessary translation of {{toc}} macros in Russian Wiki formatting help

### Email notifications

* Feature redmine-33834: Show open/closed badge in email notifications

### Feeds

* Defect redmine-10535: Atom feeds for the Project Activity contain incorrect hostname

### Gems support

* Patch redmine-32468: Update Rouge to 3.25.0
* Patch redmine-32530: Update RuboCop to 1.0
* Patch redmine-32531: Update RuboCop Rails to 2.8
* Patch redmine-32763: Update mini_magick to 4.11
* Patch redmine-34159: Update RuboCop Performance to 1.8

### Hook requests

* Patch redmine-34072: Hook after plugins were loaded

### I18n

* Defect redmine-33426: Error messages for Wiki macros are not internationalized
* Patch redmine-33741: Decimal separator for Dutch locale should be a comma

### Importers

* Feature redmine-33102: Import user accounts from CSV file

### Issues

* Defect redmine-#34185: Trackers of subprojects are not displayed in the Issue summary page
* Feature redmine-28471: Query links for subtasks on issue page
* Feature redmine-31881: Add "behind-schedule" CSS class to issues
* Feature redmine-33832: Move the "Private" badge next to the "Open/Closed" badge

### Performance

* Defect redmine-33289: Updating time tracking activities in project setting may take too long time
* Patch redmine-33664: evaluate acts_as_activity_provider's scope lazily
* Patch redmine-34150: Use match? instead of =~ when MatchData is not used
* Patch redmine-34153: Use sum instead of inject(0, :+)
* Patch redmine-34160: Replace Hash#merge! with Hash#[]=
* Patch redmine-34161: Replace gsub with tr, delete, or squeeze

### Permissions and roles

* Patch redmine-33945: Allow normal users to delete projects with permission

### Plugin API

* Patch redmine-33453: Add plugin CSS classes to plugin settings views

### Projects

* Feature redmine-32944: Always preserve the tree structure in the project jump box

### REST API

* Defect redmine-33787: Redmine::ApiTest::UsersTest fail if config.time_zone is set
* Feature redmine-33592: Include updated_on and passwd_changed_on columns in users API response

### Roadmap

* Defect redmine-32860: Invalid links to versions with sharing in project tree
* Feature redmine-7956: Show Roadmap tab when subprojects have defined versions

### Ruby support

* Feature redmine-31500: Ruby 2.7 support
* Feature redmine-34142: Drop Ruby 2.3 support

### SEO

* Feature redmine-31617: robots.txt: disallow crawling dynamically generated PDF documents

### Text formatting

* Feature redmine-1718: Table column sorting

### Third-party libraries

* Patch redmine-33424: Update Tribute to 5.1.3

### Translations

* Patch redmine-33763: Change Japanese translation for field_onthefly

### UI

* Feature redmine-29473: Submit a form with Ctrl+Enter / Command+Return
* Patch redmine-33908: Show an icon for a bookmarked project in the projects list

### UI - Responsive

* Defect redmine-33913: Input fields of the login form are too small in height on mobile

### Wiki

* Defect redmine-31287: Ordering wiki pages should not be case sensitive

## RedMica 1.1.1 - 2020-11-14

* Defect redmine-33140: Gantt bar is not displayed if the due date is the leftmost date or the start date is the rightmost date
* Defect redmine-33175: Starting or ending marker is not displayed if they are on the leftmost or rightmost boundary of the gantt
* Defect redmine-33234: Vertical scroll bar in some browsers hide content
* Defect redmine-33563: File selection buttons are not fully displayed with Google Chrome in some language
* Defect redmine-33576: Done ratio of a parent issue may be shown as 99% even though all subtasks are completed
* Defect redmine-33639: Cannot paste image from clipboard when copying the image from web browsers or some apps
* Defect redmine-33689: Issues API bypasses add_issue_notes permission
* Defect redmine-33724: Selected gantt columns are not displayed with MS Edge Legacy
* Defect redmine-33768: Bundler may fail to install stringio if Ruby prior to 2.5 is used
* Defect redmine-33769: When creating more than two identical attachments in a single db transaction, the first one always ends up unreadable
* Defect redmine-33889: Do not show list for custom fields without list entry on project overview
* Defect redmine-33926: Rake tasks "db:encrypt" and "db:decrypt" may fail due to validation error
* Defect redmine-33935: Locked users in a group receive notifications when the group is added as a watcher
* Defect redmine-6734: robots.txt: disallow crawling issues list with a query string
* Defect redmine-8251: Classic Theme: Missed base line
* Patch redmine-33958: Jump to end of line in editor when starting list or quote
* Patch redmine-34062: Upgrade Rails to 5.2.4.4
* Patch redmine-34200: Portuguese (Brazil) translation for 4.1-stable

## RedMica 1.1.0 - 2020-05-31

Based on Redmine 4.1.1.devel.19782. The database schema is the same as Redmine r18296 and RedMica 1.0.

* GH-51: Change favicon from Redmine logo to RedMica logo
* GH-53: Update Bleuclair theme (revision 0751018)
* Defect redmine-5354: Updating custom fields does not trigger update to "updated_on" field in the customized object
* Defect redmine-23055: Error with Fetch commits with Mercurial repository when log has invalid char
* Defect redmine-27790: mercurial: error of double quotes in branch and tag names
* Defect redmine-32125: Issues autocomplete may not find issues with a subject longer than 60 characters
* Defect redmine-32153: Repository browser does not render previews for audio/video files
* Defect redmine-32450: Attempts to get "tribute.min.js.map" by Chrome DevTool causes RoutingError.
* Defect redmine-32471: Layout of the custom field edit page is different between the single edit page and the batch edit page
* Defect redmine-32752: Ruby 2.7: Remove deprecated URI.escape/unescape
* Defect redmine-33103: Export to PDF fails when subject of parent task is included in issue list
* Defect redmine-33116: Successful deletion notice is not displayed after deleting some types of content
* Defect redmine-33186: field_activity should be used rather than label_activity in the context of time tracking
* Defect redmine-33255: Issue auto complete doesn't work for custom fields with text formatting enabled on issue bulk edit page
* Defect redmine-33357:  rendering extra "--" footer of git patch attachment
* Defect redmine-33392: Fix invalid selector in function displayTabsButtons()
* Defect redmine-33417: Updating an issue via REST API causes internal server error if invalid project id is specified
* Defect redmine-33452: Untranslated string "diff" in journal detail
* Feature redmine-1575: Toolbar button to insert a table
* Feature redmine-3369: Allowed/Disallowed email domains settings to restrict users' email addresses
* Feature redmine-4511: Allow adding user groups as watchers for issues
* Feature redmine-7056: Download all attachments at once
* Feature redmine-16006: Include attachments in forum post notifications
* Feature redmine-18555: Show warning when attempting to attach more than the allowed number of attachments
* Feature redmine-28198: Support issue relations when importing issues
* Feature redmine-31589: Show warning and the reason when the issue cannot be closed because of open subtasks or blocking open issue(s)
* Feature redmine-31887: Update jQuery UI to 1.12.1
* Feature redmine-31911: Update request_store gem to 1.4
* Feature redmine-32240: Add download buttons in Files columns of the issues list
* Feature redmine-32528: Make languages in Highlighted code button in toolbar customizable
* Feature redmine-32672: Add Check all / Uncheck all button to filters in permissions report
* Feature redmine-32764: Make form validation errors more obvious for users
* Feature redmine-32783: Redirect to index page instead of edit page after creating a new custom field
* Feature redmine-32818: Add a system settings for default results display format of project query
* Feature redmine-32976: Display avatar on add watchar dialog
* Feature redmine-32998: Change the default value for "Default Gravatar image" to "Identicons"
* Feature redmine-33002: Include attachments in news post notifications
* Feature redmine-33099: Add a link to the issues list in reminder email
* Feature redmine-33126: Support custom fields when exporting users to CSV
* Feature redmine-33174: Show groups in members box on project overview page
* Feature redmine-33254: Show open/closed badge on issue page
* Feature redmine-33256: Show wiki toolbar for spent time custom fields with text formatting enabled
* Feature redmine-33296: Load default custom queries when running redmine:load_default_data rake task
* Feature redmine-33347: Include updated_on and passwd_changed_on columns when exporting users to CSV
* Patch redmine-22913: Auto-select fields mapping in Importing
* Patch redmine-29285: Add "Assign to me" shortcut to issue edit form
* Patch redmine-29838: time logging via commit message does not work when the configured activity has been overridden on the project level
* Patch redmine-32238: Improvement of the German translation
* Patch redmine-32380: Change Italian translation for "news"
* Patch redmine-32400: Remove unused i18n key "button_duplicate"
* Patch redmine-32431: Invalid association IssueCustomField#issue_custom_values
* Patch redmine-32432: Avoid class name overlap that causes TypeError on `rake test:system test`
* Patch redmine-32444: Add missing fixture to Redmine::WikiFormatting::MacrosTest
* Patch redmine-32453: Update capybara (~> 3.31.0)
* Patch redmine-32478: Add missing fixture to TimelogControllerTest
* Patch redmine-32527: Fix ruby 2.7 warning: given argument is nil; this will raise  a TypeError in the next release
* Patch redmine-32530: Update RuboCop to 0.81
* Patch redmine-32531: Update RuboCop Rails to 2.5
* Patch redmine-32542: Fix ruby 2.7 warning: The last argument is used as the keyword parameter
* Patch redmine-32555: Update Puma (~> 4.3.1)
* Patch redmine-32628: Notify users about high issues (only)
* Patch redmine-32763: Update mini_magick to 4.10
* Patch redmine-32782: Update pg gem (~> 1.2.2)
* Patch redmine-32805: Update request_store to 1.5
* Patch redmine-32813: Clean up toggleMultiSelect js function
* Patch redmine-32828: Fix typos in Russian translation
* Patch redmine-32835: Make breadcrumbs of repository browser copy-paste friendly
* Patch redmine-32841: Drop support for Bundler prior to 1.12.0
* Patch redmine-32886: Rails 6: Use #media_type instead of #content_type to test the MIME type of a response
* Patch redmine-32887: Rails 6: Use "render template:" instead of "render file:" in app/views/layouts/admin.html.erb
* Patch redmine-32888: Use stylelint to avoid errors and enforce conventions in CSS files
* Patch redmine-32890: Fix violations reported by Stylelint
* Patch redmine-32906: Update i18n (~> 1.8.2)
* Patch redmine-32907: Update capybara (~> 3.31.0)
* Patch redmine-32911: Rails 6: Fix deprecation warning "Class level methods will no longer inherit scoping"
* Patch redmine-32924: tmp/pdf directory is no longer necessary
* Patch redmine-32927: CSS selector in test_index_should_show_warning_when_no_workflow_is_defined is too specific
* Patch redmine-32929: Add missing fixtures to AttachmentsControllerTest
* Patch redmine-32937: test_revisions_latin_1_identifier should be skipped on Windows
* Patch redmine-32950: Update simplecov to 0.18
* Patch redmine-33036: Add missing fixture to IssuesControllerTest
* Patch redmine-33069: Update copyright year in source files to 2020
* Patch redmine-33208:  `--without rmagick` option for bundle command is no longer necessary
* Patch redmine-33244: Replace "**" method with bitwise left shift in Tracker#disabled_core_fields and Tracker#core_fields
* Patch redmine-33301: Add option to include enabled issue custom fields in projects#show API response
* Patch redmine-33342: Remove unused i18n key "label_overall_activity" and "label_overall_spent_time"
* Patch redmine-33367: Use more efficient "exists?" instead of "first" in tests when checking the existence of rows
* Patch redmine-33376: Add missing fixtures to VersionsHelperTest
* Patch redmine-33384: jQuery: replace deprecated size() method with length
* Patch redmine-33393: Remove unused i18n key "notice_no_issue_selected"
* Patch redmine-33403: Change Japanese translation for text_file_repository_writable
* Patch redmine-33437: Add missing icon class to items with icon-checked class in the context menu

## RedMica 1.0.2 - 2020-05-13

Based on Redmine 4.1.1

* Defect redmine-123: One user's bad email address breaks all email notifications for everyone on a project
* Defect redmine-19248: End markers in gantt PDF are misaligned
* Defect redmine-20277: "Couldn't find template for digesting" error in the log when sending a thumbnail or an attachment
* Defect redmine-21766: CSV import does not keep the project it was clicked from
* Defect redmine-23645: Gantt bars for single-day tasks may be rendered wrongly in PDF
* Defect redmine-30285: Microsoft SQL server support is broken
* Defect redmine-32194: Calendar page lacks buttons to manage custom queries
* Defect redmine-32422: Textile indentation does not work in the preview tab
* Defect redmine-32449: Diff view for .js files in repositories is broken
* Defect redmine-32469: Text copied from some applications such as MS Office and LibreOffice is pasted as an image in addition to plain text
* Defect redmine-32477: Right-aligned TOC tag is displayed in exported PDF if the text formatting setting is Markdown
* Defect redmine-32500: Spent time report csv shows translation missing text if custom fields are involved
* Defect redmine-32503: Project jump box options are not extracted correctly after searching
* Defect redmine-32525: CSV related tests fail with Rails 5.2.4
* Defect redmine-32529: The end of the URL is replaced with "undefined" in IE11 and Edge
* Defect redmine-32546: Issue relations filter lacks "is not"
* Defect redmine-32656: Drag and drop objects from Outlook to Redmine deletes the objects
* Defect redmine-32737: Duplicate sort keys for issue query cause SQL error with SQL Server
* Defect redmine-32754: Fix missing arrow icon of collapse macro
* Defect redmine-32765: ##123 syntax for linking to issues: Title cannot be distinguished from following text
* Defect redmine-32768: Internal Error when issue text custom field is shown in Spent time query results
* Defect redmine-32769: Unable to sort projects table by custom field
* Defect redmine-32772: Tabs are displayed on two lines when the total width of the tabs is greater than 2000px
* Defect redmine-32774: Creating time tracking entry for other user through rest API fails with 403
* Defect redmine-32785: X-Sendfile header field is not set if rack 2.1.0 is installed
* Defect redmine-32793: Email address with Punycode top-level domain is not accepted
* Defect redmine-32795: Remove RubyGems from Requirements in doc/INSTALL
* Defect redmine-32812: Clicking on a parent object in gantt wrongly collapses objects at the same level
* Defect redmine-32829: HTML entity is used in CSS string
* Defect redmine-32832: FrozenError when exporting content to PDF in some languages
* Defect redmine-32838: Typo in application.css: s/paddin-bottom/padding-bottom/
* Defect redmine-32839: Redmine 4.1 installation fails due to an attempt to install sprockets 4.0.0 if bundler prior to 1.15.2 is used on Ruby prior to 2.5
* Defect redmine-32858: Exporting issue as PDF fails when the issue has private journal
* Defect redmine-32859: Issue list: long text custom field missing in PDF export
* Defect redmine-32889: Responsive layout for issue tree and issue relation on issue page is broken
* Defect redmine-32896: Totals not working in projects list view
* Defect redmine-32959: Fix selected user on log time edit page when user has permissions to log time for another user
* Defect redmine-32971: New line between list items break a list
* Defect redmine-32973: Editing a time entry for a locked user changes the user to the current user
* Defect redmine-32981: Unable to distinguish disabled input fields
* Defect redmine-33027: Fix missing closing div in _time_entries_fields_mapping.html.erb
* Defect redmine-33052: Missing subject and tracker name in CSV export of time entries report
* Defect redmine-33059: "Role" dropdown in Workflow page is unexpectedly expanded  when selecting "all"
* Defect redmine-33082: Links in the last column in gantt are unclickable
* Defect redmine-33083: Projects filter "Subproject of" does not work when the given value is "My projects" or "My bookmarks"
* Defect redmine-33085: Unable to update the values of a custom field for enumerations when multiple values option is enabled
* Defect redmine-33110: Sort does not work with group by datetime columns
* Defect redmine-33113: Default version and assignee are not exposed via projects API
* Defect redmine-33163: Parent task subject column should be in the same style as Subject column
* Defect redmine-33169: Issues CSV export does not include custom fields with "Full width layout" enabled
* Defect redmine-33176: Sort order icon is missing in users index
* Defect redmine-33183: Unable to edit user or group that has custom fields with text formatting enabled
* Defect redmine-33220: Parent task subject column in gantt is not fully displayed when the column is widened
* Defect redmine-33273: Total estimated time column shows up as decimal value regardless of time setting
* Defect redmine-33275: Possible values field in list format custom field form is not marked as required
* Defect redmine-33281: Totals of custom fields may not be sorted as configured
* Defect redmine-33283: Thumbnail support for PDF attachments may not be detected
* Defect redmine-33310: Warnings while running redmine:load_default_data rake task
* Defect redmine-33339: Broken layout of the preview tab of "Welcome text" setting due to unexpectedly applied padding-left
* Defect redmine-33341: Time entry user is shown twice in the User drop-down when editing spent time
* Feature redmine-32945: Show module names in bold in permission report
* Feature redmine-33156: Allow zooming on mobile devices
* Feature redmine-3800: Editing time entries should show the person involved
* Patch redmine-32341: Show tooltip when hovering on repeat-value link in Field permission tab
* Patch redmine-32436: Add support for grouping by issue on timelog view
* Patch redmine-32468: Update Rouge to 3.19.0
* Patch redmine-32540: Add missing fixtures to VersionTest
* Patch redmine-32552: Clarify that pasting images from clipboard does not support Internet Explorer
* Patch redmine-32592: Require 'mocha/minitest' instead of deprecated 'mocha/setup'
* Patch redmine-32596: fix image pasting for Edge
* Patch redmine-32599: Galician translation update
* Patch redmine-32652: Bulgarian translation
* Patch redmine-32653: Fix random test failure due to missing call to set_tmp_attachments_directory in WikiControllerTest
* Patch redmine-32659: Russian translation update for 4.1-stable
* Patch redmine-32746: Italian translation update for 4.1-stable
* Patch redmine-32788: Specify supported Ruby version in Gemfile and doc/INSTALL
* Patch redmine-32928: Czech translation for 4.1-stable
* Patch redmine-32991: Make group names bold on tracker summary view
* Patch redmine-32995: Russian translation update for 4.1-stable
* Patch redmine-33068: Update copyright year in the footer to 2020
* Patch redmine-33122: German translation update for 4.1-stable
* Patch redmine-33196: Update Rails to 5.2.4.2

## RedMica 1.0.1 - 2019-11-18

### [Redmica specific changes]

* GH-6: Fix that test_environment fails due to f1544b3
* GH-9: redmine-r18897: Fix missing icon classes
* GH-16: Update Bleuclair theme (revision 0ad564c)
* GH-11: redmine-r18988: Fix that receiving HTML email fails if it contains a link without an href attribute

### [Issues filter]

* GH-18: redmine-16904: Add anonymous user to users list in query filters

### [LDAP]

* GH-17: Defect redmine-32470: LDAP authentication is broken due to r18692

### [Projects]

* GH-7: Feature redmine-29482: Query system for Projects page

### [Time tracking]

* GH-12: Feature redmine-30346: Add "Target Version" to the list of "Available columns" in "Spent time" Tab
* GH-8: Patch redmine-32196: Allow import time entries for other users

### [Translations]

* GH-10: Patch redmine-32320: Simplified Chinese translation for label_tomorrow, label_next_week, label_next_month, and permission_edit_own_issues


## RedMica 1.0.0 - 2019-11-02

Based on Redmine 4.0.5.devel.18886. The database schema is the same as Redmine r18296.

### [Redmica specific changes]

* GH-1: Add README for RedMica
* GH-2: Show RedMica version info on Administration > Information page
* GH-3: Set Bleuclair as the default theme
* GH-4: Remove PULL_REQUEST_TEMPLATE.md for Redmine

### [Accounts / authentication]

* Feature redmine-4221: Force passwords to contain specified character classes
* Feature redmine-9112: Libravatar and Gravatar-compatible servers support
* Feature redmine-26127: Display user logins on profiles

### [Administration]

* Defect redmine-29601: Redmine::VERSION::revision may return wrong value
* Feature redmine-8343: Add wiki toolbar to "Email header" and "Email footer" in "Email notifications" admin tab
* Feature redmine-30853: Show warning when no workflow is defined for the role
* Feature redmine-30916: Show warning when no tracker uses the status in the workflows
* Feature redmine-31154: Reject setting RFC non-compliant emission email addresses
* Feature redmine-31361: Include a reason in the error message when an issue status cannot be deleted
* Feature redmine-32343: Ability to filter roles that are displayed on the permissions report
* Patch redmine-29589: Set the first status as a default status in "New tracker" form

### [Attachments]

* Defect redmine-32289: Don't try to generate thumbnails if convert command is not available
* Feature redmine-3816: Allow pasting screenshots from clipboard
* Feature redmine-22481: Show thumbnails for PDF attachments
* Feature redmine-29752: Render Textile and Markdown attachments on the preview page
* Feature redmine-31553: Preview .webm as video instead of audio
* Feature redmine-32249: Show attachment thumbnails by default
* Patch redmine-13688: Chosen thumbnail has to be bigger than requested one and not smaller
* Patch redmine-30177: Thumbnail lifecycle: reuse thumbs from identical files, delete thumbs when diskfile is deleted

### [Calendar]

* Feature redmine-27096: Mark non-working days in calendar view

### [Code cleanup/refactoring]

* Defect redmine-30474: IssuesControllerTest#test_index_sort_by_total_estimated_hours tests practically nothing
* Defect redmine-30806: TimeEntryTest#test_create_should_validate_user_id occasionally fails
* Defect redmine-31053: Some issue fixtures are set inconsistent tracker id which is not available in the project
* Defect redmine-31074: TimelogTest#test_default_query_setting fails depending on the language of the browser
* Defect redmine-31093: Duplicate method definition: ProjectsControllerTest#test_jump_should_not_redirect_to_unknown_tab
* Defect redmine-31387: Don't rescue Exception class
* Defect redmine-31388: ApiTest fails if config.time_zone is set
* Defect redmine-31508: Add missing frozen strings and copyrights
* Defect redmine-31510: Fix missing closing tags in workflows/permissions.html.erb
* Defect redmine-31929: MarkdownFormatterTest#test_should_support_underlined_text is declared as private
* Patch redmine-29441: Remove code related to JRuby and unsupported Ruby versions
* Patch redmine-30163: Remove unnecessary tests in test/unit/initializers/patches_test.rb
* Patch redmine-30276: Add missing fixtures to several tests
* Patch redmine-30347: test_links_separated_with_line_break_should_link tests nothing
* Patch redmine-30445: Remove unnecessary bgl and bgr wrappers from the footer
* Patch redmine-30466: Remove unused i18n key "label_all_time"
* Patch redmine-30994: Refactor custom field css classes
* Patch redmine-31004: Decode hexadecimal-encoded literals in order to be frozen string literals friendly
* Patch redmine-31034: Remove encoding magic comments
* Patch redmine-31046: Remove unused method ApplicationHelper#generate_csv
* Patch redmine-31059: Use #b shortcut instead of #force_encoding
* Patch redmine-31088: Remove useless code in TimeEntryQuery#sql_for_activity_id_field
* Patch redmine-31131: CalendarsControllerTest#test_show fails depending on the date
* Patch redmine-31205: Replace jquery-rails with vanilla javascript ujs
* Patch redmine-31344: Remove unused i18n key "label_please_login"
* Patch redmine-31391: Small refactorization of avatar methods
* Patch redmine-31402: Add support for customization by block to IssueCustomField.generate!
* Patch redmine-31433: Use "icon icon-*" classes for sort-handler, collapsible fieldsets and collapsible versions
* Patch redmine-31506: Remove trailing whitespaces
* Patch redmine-31509: Add Rubocop to enforce some styles
* Patch redmine-31555: Use Redmine::Database.mysql? instead of a regular expression
* Patch redmine-31705: Add missing fixtures to AttachmentFormatVisibilityTest
* Patch redmine-31865: Add missing fixtures to ImportsControllerTest
* Patch redmine-31941: ThemesTest may fail if a third-party theme with a favicon is installed
* Patch redmine-31965: Add missing fixtures to Redmine::ApiTest::VersionsTest
* Patch redmine-31966: Add missing fixtures to Redmine::Helpers::GanttHelperTest
* Patch redmine-31967: IssueCustomFieldTest randomly fails
* Patch redmine-32023: Add missing fixtures to IssueStatusesControllerTest
* Patch redmine-32025: mail_body method in test/test_helper.rb raises an exception if the message is not multipart
* Patch redmine-32094: Remove unnecessary call to set_tmp_attachments_directory
* Patch redmine-32122: Fix test failure due to missing call to set_tmp_attachments_directory
* Patch redmine-32297: Remove code for unsupported versions of Rails from open_id_authentication

### [Custom fields]

* Defect redmine-29209: Long text custom fields don't accept values longer than 64KB if backend database is MySQL
* Feature redmine-29712: Preview and wiki toolbar for full width custom fields
* Feature redmine-31159: "Create and continue" button for custom fields
* Feature redmine-31444: Add  "<< me >>" option to user format issue custom fields
* Feature redmine-31925: Per role visibility settings for project custom fields
* Patch redmine-23997: Per role visibility settings for version custom fields
* Patch redmine-31320: Set an appropriate default type in New custom field page depending on the current tab
* Patch redmine-31859: Per role visibility settings for spent time custom fields

### [Database]

* Feature redmine-31921: Changes to properly support 4 byte characters (emoji) when database is MySQL

### [Documentation]

* Feature redmine-32119: Add TOC to wiki formatting help
* Feature redmine-32123: Add "Highlighted code" section in Wiki Syntax Quick Reference
* Feature redmine-32169: Add links to the detailed Wiki formatting help in Quick Reference
* Patch redmine-30970: Small improvements in appearance of the code coverage index page
* Patch redmine-31169: [Wiki Syntax Help] document image pasting and drag/drop embedding
* Patch redmine-31327: Update CONTRIBUTING.md

### [Documents]

* Feature redmine-29725: Show recent documents first when sorting documents by date

### [Email notifications]

* Defect redmine-13888: Daylight savings causes inconsistency of Message-Id in emails
* Defect redmine-14792: Don't add a display name and extra angle brackets in List-Id header field
* Defect redmine-17096: Issue emails cannot be threaded by some mailers due to inconsistent Message-ID and References field
* Defect redmine-31501: reminder.rake should ignore blank parameters
* Feature redmine-5913: Authors name in from  address of email notifications
* Feature redmine-10378: Don't show empty fields in email notifications
* Feature redmine-13111: New setting to include the status changes in issue mail notifications subject
* Feature redmine-13307: Start date and due date in email notifications
* Feature redmine-17840: Option to send email notification on "Target version updated"
* Feature redmine-22771: Option to send email notifications while importing issues from CSV files
* Feature redmine-31104: Show the total number of open issues in a reminder
* Feature redmine-31225: Show the number of days left until the due date in reminders
* Feature redmine-31910: Add additional mail headers for issue tracker

### [Email receiving]

* Defect redmine-31232: Text may unexpectedly be enclosed in pre tags when an issue is created via HTML email
* Defect redmine-31549: LF line terminators cause misparse of a multi-part email when rdm-mailhandler.rb is invoked from /etc/aliases
* Defect redmine-31695: Convert HTML links to Textile/Markdown links when creating an issue from an email
* Defect redmine-31946: No log message when MailHandler ignored a reply to a nonexistent issue, journal, or message
* Feature redmine-17699: Parse author's name enclosed in parentheses in the From field when creating a user account from an email
* Feature redmine-19903: Change textfield to textarea for "Exclude attachments by name"
* Feature redmine-30838: Option to parse HTML part of multipart (HTML) emails first
* Feature redmine-31231: Better handling of HTML tables when creating an issue from an email
* Patch redmine-31324: Allow to set is_private flag through a keyword in emails
* Patch redmine-31899: Improve MailHandler logging for unauthorized attempts

### [Gantt]

* Feature redmine-6417: Allow collapse/expand in gantt chart
* Feature redmine-14654: Allow a bigger range for the gantt timeline
* Feature redmine-27672: Show selected columns in gantt chart
* Feature redmine-31373: Previous and next month links in gantt

### [Gems support]

* Defect redmine-31657: Update capybara (~> 3.25.0)
* Defect redmine-32223: Disable sprockets to avoid Sprockets::Railtie::ManifestNeededError raised by sprockets 4.0.0
* Feature redmine-29946: Update i18n gem (~> 1.6.0)
* Feature redmine-30492: Replace RMagick with MiniMagick
* Feature redmine-30963: Update simplecov gem (~> 0.17.0)
* Patch redmine-31126: Update sqlite3 gem (~> 1.4.0)
* Patch redmine-31556: Update Rouge to 3.12.0
* Patch redmine-31611: Update csv gem (~> 3.1.1)
* Patch redmine-31847: Update redcarpet to 3.5.0
* Patch redmine-31877: Update rbpdf (~> 1.20.0)
* Patch redmine-31919: Update roadie-rails gem (~> 2.1.0)

### [Groups]

* Feature redmine-12796: Display user's groups on profile

### [Hook requests]

* Patch redmine-7975: Hook for adding content to the side bar of Wiki page

### [I18n]

* Defect redmine-5820: Hard-coded string "no subject" in app/models/mail_handler.rb

### [Importers]

* Feature redmine-28213: Support external ID when importing issues
* Feature redmine-31450: Support "YYYY/MM/DD" date format when importing issues

### [Issues]

* Defect redmine-28502: Support issue[assigned_to_id]=me when prefilling issues
* Feature redmine-442: Add a description for trackers
* Feature redmine-3058: Show issue history using tabs
* Feature redmine-22368: Ability to add private comments from the issue bulk edit page
* Feature redmine-25540: Unify fields of subtasks and related issues on issue page
* Feature redmine-31418: Stacked bar charts in the issue details report
* Feature redmine-31427: Insert a link to the source to the attribution line when quoting a note or a message
* Feature redmine-31499: Show "Due in X days" in issue details page
* Patch redmine-28138: Add link to add a new issue on the version page
* Patch redmine-31493: Add a link to project_issues_report from project_issues_report_details
* Patch redmine-31994: Allow issue auto complete to return 10 issues when there is not search term provided

### [Issues filter]

* Feature redmine-13803: Implement grouping issues by date (start, due, creation, update, closing dates)
* Feature redmine-30482: Multiple issue ids in "Parent task" filter
* Feature redmine-30808: Multiple issue ids in "Subtasks" filter
* Feature redmine-31328: Change the "+" button in the issues filter to a larger one
* Feature redmine-31879: "starts with" and "ends with" filter operators for string values
* Patch redmine-4502: New date filter operators: tomorrow, next week, next month
* Patch redmine-25265: QueriesController can not handle subclass of IssueQuery
* Patch redmine-26826: Issue filtering by spent time

### [Issues list]

* Defect redmine-29581: Issues in paginated views may be lost because sorting criteria are not unique
* Feature redmine-19371: Add a new query column for the parent task subject
* Feature redmine-26081: Allow full_width_layout long-text custom fields to appear in the issue list like 'Description' (as a block column)
* Patch redmine-31280: Left align long text custom fields in the issues list

### [My page]

* Feature redmine-30975: New My page block: Updated issues

### [PDF export]

* Patch redmine-30162: Wiki page collapse block image is not displayed in exported PDF

### [Performance]

* Feature redmine-26561: Enable frozen string literals
* Patch redmine-28940: Use Regexp#match? to reduce allocations of MatchData object
* Patch redmine-30249: Performance improvement when rendering news or calendar block on My page
* Patch redmine-30828: Refactor GitAdapter#default_branch not to unnecessarily iterate through all elements
* Patch redmine-31855: Speed up workflow edit page rendering

### [Permissions and roles]

* Defect redmine-17219: Rename label for "Issues can be assigned to this role"
* Defect redmine-30431: Useless "Delete issues" tracker permission is shown on the role page for Anonymous and Non-member
* Feature redmine-1248: New Permission:  Edit own issues
* Patch redmine-27625: Increase maximum size for role name

### [Plugin API]

* Patch redmine-27659: redmine_plugin_model_generator improvements(fixes and timestamps)
* Patch redmine-31110: Raise an exception if the plugin directory name differs from the plugin id
* Patch redmine-31457: Add support for reloading plugin assets automatically in development mode
* Patch redmine-31485: Add support for :sql ActiveRecord::Base.schema_format in redmine:plugins:migrate
* Patch redmine-31498: Add redmine_plugin_migration generator
* Patch redmine-31746: Add redmine:plugins:test:system task

### [Project settings]

* Defect redmine-27101: Project identifier model constraint doesn't match with text_project_identifier_info and JS-generated identifiers
* Feature redmine-22090: Make project settings more accessible
* Feature redmine-31032: Display details about inheritance when editing a member roles
* Patch redmine-30203: Add links to administration pages in project settings

### [Projects]

* Feature redmine-32306: Add a link to projects administration page on projects page
* Patch redmine-31355: Bookmarks and recently used projects for the project jump box
* Patch redmine-31356: replace icon-fav with icon-user for 'my projects'
* Patch redmine-31465: Add an icon linked to trackers detail report on the project overview page

### [REST API]

* Defect redmine-30073: Ajax Request Returns 200 but an error event is fired instead of success
* Feature redmine-26237: Support wiki_page_title attribute in Versions REST API
* Feature redmine-30086: Use HTTP status code 403 instead of 401 when REST API is disabled
* Feature redmine-31559: Support "active" attribute in Enumerations REST API
* Feature redmine-32002: Add inherit_members to projects API response
* Feature redmine-32242: Add estimated hours and spent hours to Versions API
* Patch redmine-13468: REST API for News
* Patch redmine-31399: make /my/account endpoint accessible through API

### [Roadmap]

* Defect redmine-30949: Roadmap shows 100%, but one of its tasks is still set to 90%
* Patch redmine-28510: Show issue assignee gravatar in roadmap and version page
* Patch redmine-29391: Show version status in Roadmap and Version pages
* Patch redmine-31424: Add issue css classes to issue rows in Roadmap and Version pages

### [Ruby support]

* Defect redmine-30967: "rake test:coverage" fails in Ruby 2.5 and 2.6
* Feature redmine-30356: Drop Ruby 2.2 support

### [SCM]

* Defect redmine-16881: Git: repository page crashes when non-ascii character in tag or branch name

### [Text formatting]

* Defect redmine-30259: URLs end with "-" are rendered incorrectly in Textile
* Feature redmine-30829: Simpler link syntax "#note-123" to make a link to a note of the current issue
* Patch redmine-29489: Issue macro for flexible linking to issues
* Patch redmine-32359: Markdown: Fix sections parsing with code blocks

### [Third-party libraries]

* Feature redmine-31196: Updates jQuery to 2.2.4 and adds jQuery Migrate library
* Feature redmine-31434: Update Chart.js to 2.8.0
* Feature redmine-31436: Update raphael.js to 2.3.0

### [Time tracking]

* Feature redmine-3322: Setting to restrict spent times on future dates
* Feature redmine-3848: Permission to log time for another user
* Feature redmine-5061: Show time log entries in issue history
* Feature redmine-30464: Show estimated hours on the overview page as well as spent hours
* Patch redmine-30233: Implement grouping time entries by creation date

### [Translations]

* Defect redmine-31269: Fix Japanese translation for status_locked
* Defect redmine-32354: Fix inconsistent capitalization in Italian translation
* Patch redmine-10702: Change "Create and Continue" translation to "Create and add another"
* Patch redmine-29142: Japanese translation change for "lost password"
* Patch redmine-29151: Add honorific suffixes ("san") in Japanese translation
* Patch redmine-30170: Change Japanese translation for "note"
* Patch redmine-31256: german translation for missing parts
* Patch redmine-31260: Improvement of Japanese translation for permission names
* Patch redmine-32358: Fix incomplete Italian translation for notice_successful keys

### [UI]

* Defect redmine-27330: "Name" field in the 'edit version' form has no "maxlength"
* Defect redmine-30467: Footer is not placed at the bottom on pages with little content
* Defect redmine-31496: Switch between toggle plus and minus icons for toggle multi select
* Feature redmine-6831: Add different style for group names in the New member modal window
* Feature redmine-23392: Link to remove a subtask from its parent task
* Feature redmine-30207: Hide menu item in the cross-project menu if the module is not enabled in any project
* Feature redmine-31294: Add "robohash" to "Default Gravatar image" options
* Feature redmine-32052: Auto-complete issues #id in search form
* Patch redmine-5899: Display user's gravatar when editing profile
* Patch redmine-26604: Set a random name attribute on all forms to prevent overwritten values after soft reload with Firefox
* Patch redmine-26646: Remove hardcoded width in query column selects
* Patch redmine-29289: Wrap subprojects in the overview section with an unordered list to improve customisation
* Patch redmine-30168: Wrap "splitcontentright" and "splitcontentleft" containers with a flexbox
* Patch redmine-30294: Move the links (View all issues, Summary, Import) from the Issues section of the issues list sidebar under a dropdown
* Patch redmine-30421: Issue tracking table on user profile page
* Patch redmine-30435: Replace float rules with flexbox for content and sidebar block
* Patch redmine-31022: Always use HTTPS when accessing gravatar.com
* Patch redmine-31066: Show projects using a table instead of an unordered list in the user profile page
* Patch redmine-31147: Add custom styles for all fields
* Patch redmine-31204: Add hover styles to buttons
* Patch redmine-31343: Visually distinguishable style for code tag
* Patch redmine-31441: Show elements titles using jQuery UI tooltips
* Patch redmine-31598: Move the links (All time entries, Import) from Spent time section of the spent time list sidebar under a dropdown
* Patch redmine-31640: Add clear query icon next to selected query in sidebar
* Patch redmine-31697: Show closed date in a tooltip if the issue is closed
* Patch redmine-31950: Add CSS class to "journal" and "reply" headers
* Patch redmine-31971: Change the color of the input field frame when in focus
* Patch redmine-31989: Inline issue auto complete (#) in fields with text-formatting enabled
* Patch redmine-32013: Rounded corners of the main menu
* Patch redmine-32014: Rounded corners on table.list elements
* Patch redmine-32015: Rounded corners of "my page" blocks
* Patch redmine-32037: Constrain sidebar width on different resolutions
* Patch redmine-32165: Rounded corners on table.cal

### [Wiki]

* Defect redmine-11359: Wiki diff doesn't keep spaces
* Defect redmine-20910: Hierarchy in TOC is not preserved when Wiki index is exported to HTML
* Feature redmine-9634: Show locked badge for locked wiki pages
