# Changelog

## RedMica 1.0.2 - 2020-05-13

Based on Redmine 4.1.1

Defect redmine-123: One user's bad email address breaks all email notifications for everyone on a project
Defect redmine-19248: End markers in gantt PDF are misaligned
Defect redmine-20277: "Couldn't find template for digesting" error in the log when sending a thumbnail or an attachment
Defect redmine-21766: CSV import does not keep the project it was clicked from
Defect redmine-23645: Gantt bars for single-day tasks may be rendered wrongly in PDF
Defect redmine-30285: Microsoft SQL server support is broken
Defect redmine-32194: Calendar page lacks buttons to manage custom queries
Defect redmine-32422: Textile indentation does not work in the preview tab
Defect redmine-32449: Diff view for .js files in repositories is broken
Defect redmine-32469: Text copied from some applications such as MS Office and LibreOffice is pasted as an image in addition to plain text
Defect redmine-32477: Right-aligned TOC tag is displayed in exported PDF if the text formatting setting is Markdown
Defect redmine-32500: Spent time report csv shows translation missing text if custom fields are involved
Defect redmine-32503: Project jump box options are not extracted correctly after searching
Defect redmine-32525: CSV related tests fail with Rails 5.2.4
Defect redmine-32529: The end of the URL is replaced with "undefined" in IE11 and Edge
Defect redmine-32546: Issue relations filter lacks "is not"
Defect redmine-32656: Drag and drop objects from Outlook to Redmine deletes the objects
Defect redmine-32737: Duplicate sort keys for issue query cause SQL error with SQL Server
Defect redmine-32754: Fix missing arrow icon of collapse macro
Defect redmine-32765: ##123 syntax for linking to issues: Title cannot be distinguished from following text
Defect redmine-32768: Internal Error when issue text custom field is shown in Spent time query results
Defect redmine-32769: Unable to sort projects table by custom field
Defect redmine-32772: Tabs are displayed on two lines when the total width of the tabs is greater than 2000px
Defect redmine-32774: Creating time tracking entry for other user through rest API fails with 403
Defect redmine-32785: X-Sendfile header field is not set if rack 2.1.0 is installed
Defect redmine-32793: Email address with Punycode top-level domain is not accepted
Defect redmine-32795: Remove RubyGems from Requirements in doc/INSTALL
Defect redmine-32812: Clicking on a parent object in gantt wrongly collapses objects at the same level
Defect redmine-32829: HTML entity is used in CSS string
Defect redmine-32832: FrozenError when exporting content to PDF in some languages
Defect redmine-32838: Typo in application.css: s/paddin-bottom/padding-bottom/
Defect redmine-32839: Redmine 4.1 installation fails due to an attempt to install sprockets 4.0.0 if bundler prior to 1.15.2 is used on Ruby prior to 2.5
Defect redmine-32858: Exporting issue as PDF fails when the issue has private journal
Defect redmine-32859: Issue list: long text custom field missing in PDF export
Defect redmine-32889: Responsive layout for issue tree and issue relation on issue page is broken
Defect redmine-32896: Totals not working in projects list view
Defect redmine-32959: Fix selected user on log time edit page when user has permissions to log time for another user
Defect redmine-32971: New line between list items break a list
Defect redmine-32973: Editing a time entry for a locked user changes the user to the current user
Defect redmine-32973: Editing a time entry for a locked user changes the user to the current user
Defect redmine-32981: Unable to distinguish disabled input fields
Defect redmine-33027: Fix missing closing div in _time_entries_fields_mapping.html.erb
Defect redmine-33052: Missing subject and tracker name in CSV export of time entries report
Defect redmine-33059: "Role" dropdown in Workflow page is unexpectedly expanded  when selecting "all"
Defect redmine-33082: Links in the last column in gantt are unclickable
Defect redmine-33083: Projects filter "Subproject of" does not work when the given value is "My projects" or "My bookmarks"
Defect redmine-33085: Unable to update the values of a custom field for enumerations when multiple values option is enabled
Defect redmine-33110: Sort does not work with group by datetime columns
Defect redmine-33113: Default version and assignee are not exposed via projects API
Defect redmine-33163: Parent task subject column should be in the same style as Subject column
Defect redmine-33169: Issues CSV export does not include custom fields with "Full width layout" enabled
Defect redmine-33169: Issues CSV export does not include custom fields with "Full width layout" enabled
Defect redmine-33176: Sort order icon is missing in users index
Defect redmine-33183: Unable to edit user or group that has custom fields with text formatting enabled
Defect redmine-33220: Parent task subject column in gantt is not fully displayed when the column is widened
Defect redmine-33273: Total estimated time column shows up as decimal value regardless of time setting
Defect redmine-33275: Possible values field in list format custom field form is not marked as required
Defect redmine-33281: Totals of custom fields may not be sorted as configured
Defect redmine-33283: Thumbnail support for PDF attachments may not be detected
Defect redmine-33310: Warnings while running redmine:load_default_data rake task
Defect redmine-33339: Broken layout of the preview tab of "Welcome text" setting due to unexpectedly applied padding-left
Defect redmine-33341: Time entry user is shown twice in the User drop-down when editing spent time
Feature redmine-32945: Show module names in bold in permission report
Feature redmine-33156: Allow zooming on mobile devices
Feature redmine-3800: Editing time entries should show the person involved
Patch redmine-32341: Show tooltip when hovering on repeat-value link in Field permission tab
Patch redmine-32436: Add support for grouping by issue on timelog view
Patch redmine-32468: Update Rouge to 3.19.0
Patch redmine-32540: Add missing fixtures to VersionTest
Patch redmine-32552: Clarify that pasting images from clipboard does not support Internet Explorer
Patch redmine-32592: Require 'mocha/minitest' instead of deprecated 'mocha/setup'
Patch redmine-32596: fix image pasting for Edge
Patch redmine-32599: Galician translation update
Patch redmine-32652: Bulgarian translation
Patch redmine-32653: Fix random test failure due to missing call to set_tmp_attachments_directory in WikiControllerTest
Patch redmine-32659: Russian translation update for 4.1-stable
Patch redmine-32746: Italian translation update for 4.1-stable
Patch redmine-32788: Specify supported Ruby version in Gemfile and doc/INSTALL
Patch redmine-32928: Czech translation for 4.1-stable
Patch redmine-32991: Make group names bold on tracker summary view
Patch redmine-32995: Russian translation update for 4.1-stable
Patch redmine-33068: Update copyright year in the footer to 2020
Patch redmine-33122: German translation update for 4.1-stable
Patch redmine-33196: Update Rails to 5.2.4.2

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
