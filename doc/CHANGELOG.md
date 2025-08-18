# Changelog

## RedMica 3.2.4 - 2025-08-18

### Gantt

* Defect redmine-43014: Content in selected columns overflows to the right in Gantt chart

### Importers

* Defect redmine-42957: Incorrect "for" attribute in labels of issue relations import

### Rails support

* Patch redmine-43141: Update Rails to 7.2.2.2

## RedMica 3.2.3 - 2025-07-15

### Attachments

* Defect redmine-42920: Missing icon in attachments upload form

### Email receiving

* Defect redmine-42962: Mail handler fails to create issues from emails over 4MB on Rack >= 3.1.14

### Performance

* Defect redmine-42933: Fix N+1 query issue in Wiki history page when loading authors of  Wiki content versions

### SCM

* Defect redmine-42839: Downloading .js files from the repository browser fails with a 422 error due to ActionController::InvalidCrossOriginRequest

### Translations

* Patch redmine-42971: Italian translation update for 6.0-stable

### UI

* Defect redmine-42797: Loading and waiting icons use legacy icons and overlap filename when attaching files
* Defect redmine-42953: Replace legacy other download icon with SVG icon
* Defect redmine-43004: Watchers list is not properly displayed in Gantt table
* Patch redmine-42794: Hide irrelevant information when printing

## RedMica 3.2.2 - 2025-06-19

* Fixed an issue where an exception occurred when opening issues due to mistakenly cherry-picking dd04939 in the stable-3.2 branch.

## RedMica 3.2.1 - 2025-06-18

### Issues list

* Defect redmine-42807: Progress Bar in issues list has a border above it

### Issues workflow

* Defect redmine-42875: "Page not found" error when saving workflows with many statuses on Rack >= 3.1.14

### UI

* Defect redmine-42774: Linked content is hidden under the #sticky-issue-header when using anchor links
* Defect redmine-42786: "Clear" button for custom queries has incorrect styling inside the flyout menu
* Defect redmine-42797: Loading and waiting icons overlap filename when attaching files
* Defect redmine-42818: Unnecessary margin below icons on the board-style projects page

## RedMica 3.2.0 - 2025-05-28

### Accounts / authentication

* Defect redmine-41930: Redirection after signing in fails when the back_url includes a port number

### Activity view

* Feature redmine-42041: Increase the maximum description length to 240 characters in the Activity view
* Feature redmine-42043: Abbreviate quoted text in descriptions in Activity view

### Administration

* Defect redmine-42584: NoMethodError when creating a user with an invalid email address and domain restrictions are enabled
* Feature redmine-42441: Improve error message on role deletion by listing projects using the role
* Patch redmine-41560: Improve clarity of translations in Self-registration settings

### Attachments

* Feature redmine-42133: Refactor thumbnail markup for improved structure and semantics

### Code cleanup/refactoring

* Defect redmine-42687: Fix random failures in several system tests with Chrome 133 and later
* Patch redmine-42124: Refactor `Member#role_ids=` method for improved clarity and efficiency in removing obsolete member roles
* Patch redmine-42422: Use Capybara's assert_current_path in "log_user" steps to wait for page in ApplicationSystemTestCase
* Patch redmine-42600: Suppress "Change your password" popup for stable system tests
* Patch redmine-42602: Replaces deckar01-task_list with commonmarks tasklist extension
* Patch redmine-42756: Update tests for rails-dom-testing 2.3.0 whitespace collapsing

### Custom fields

* Feature redmine-42335: "Progress bar" custom field format
* Feature redmine-41935: Add "editable" attribute in the custom fields API response

### Database

* Defect redmine-42622: Joining both atom_token and api_token on the User model causes an error due to the ambiguous column name "action"
* Feature redmine-42675: Add support for Trilogy adapter, a MySQL-compatible database adapter

### Documentation

* Defect redmine-42644: Noto Sans fonts are not applied on Wiki syntax help pages
* Defect redmine-42657: Update documentation links and fix config flag typo
* Patch redmine-42618: Add missing allowed CSS properties to the CommonMark Markdown help

### Email receiving

* Feature redmine-41738: Allow IMAP4 email receiving to skip SSL certificate verification with `ssl=force` option

### Gems support

* Defect redmine-37394: commonmarker gem is marked optional but required at runtime
* Feature redmine-42510: Add Stimulus as a Javascript framework
* Patch redmine-40197: Update commonmarker to 2.3.0
* Patch redmine-41761: Update Rubocop Performance to 1.25
* Patch redmine-41865: Update SQLite3 gem to 2.5
* Patch redmine-41884: Update RuboCop to 1.75
* Patch redmine-41964: Update Nokogiri to 1.18
* Patch redmine-42044: Update Rubocop Rails to 2.31
* Patch redmine-42071: Update rubyzip to 2.4
* Patch redmine-42104: Update MiniMagick to 5.2

### Issues

* Feature redmine-42073: Remove navigation parameters from issue detail URLs after updates
* Feature redmine-42477: Configurable columns for the lists of child and related issues

### Performance

* Feature redmine-42077: Optimize activity view performance through association preloading for journals
* Feature redmine-42121: Optimize Version#wiki_page method
* Feature redmine-42144: Optimize IssuesController#show by skipping time tracking queries when disabled
* Feature redmine-42150: Optimize TimeEntryActivity#default_activity_id method by introducing early returns to reduce SQL queries
* Patch redmine-42555: Adds the Bullet gem to detect query problems such as N+1 and improve performance
* Feature redmine-42574: Optimize autocomplete issue listing triggered by typing "##" by eager loading trackers
* Feature redmine-42589: Optimize watchers list rendering by eager loading email addresses
* Feature redmine-42663: Optimize Gantt chart rendering by reducing version-related queries
* Feature redmine-42671: Avoid unnecessary SQL query for subprojects in ProjectsController#show when project has no children
* Feature redmine-42673: Optimize `Version::FixedIssuesExtension#issues_progress` by avoiding repeated `Issue#closed?` calls
* Feature redmine-42681: Avoid unnecessary SQL queries by reordering conditions in Gantt version subject rendering
* Feature redmine-42682: Optimize the rendering of versions on the roadmap by preloading the email addresses of issue assignees

### Plugin API

* Defect redmine-42509: Plugin activity icons broken when multiple plugins are loaded

### Projects

* Defect redmine-41975: Uniqueness of Project model fields is not checked sufficiently

### Ruby support

* Feature redmine-41976: Ruby 3.4 support
* Patch redmine-42496: Drop support for Ruby 3.1

### SCM

* Feature redmine-33784: Update Mercurial repository support to be compatible with Python 3 and remove support for Mercurial < 5.1

### Text formatting

* Defect redmine-42332: "Edit this section" button is missing for headings rendered as multiline HTML
* Defect redmine-42545: Commit message in issue history might be rendered in incorrect context
* Defect redmine-42648: Wiki/CommonMark: Broken references for multiple footnote usage
* Feature redmine-38504: Display pasted images in appropriate size on HiDPI displays
* Feature redmine-42603: Enable commonmark alert extension

### Time tracking

* Feature redmine-13596: Add setting to allow/deny time logging on closed issues

### Translations

* Defect redmine-42580: Array#to_sentence produces incorrect output due to missing translation keys

### UI

* Defect redmine-41828: In mobile view, delete relation svg icon in 'Related Issues' on an issue page, overflow text
* Defect redmine-42576: Newly attached files are displayed using the legacy icons
* Defect redmine-42640: Query totals overlaps query buttons when an RTL language is used
* Defect redmine-42654: Text in project jump box is vertically misaligned
* Defect redmine-42773: Padding in the Preview tab is larger than in the actual rendered content
* Feature redmine-29214: Button to copy `pre` code block content to the clipboard
* Feature redmine-40588: Ability to disable table sort
* Feature redmine-41910: Bold current user's name in Assignee and Author columns on issues list
* Feature redmine-42305: Changes watch button icon to eye image to align icon with function and improve visual clarity
* Feature redmine-42598: Drop Atom icon in "Also available in" links
* Feature redmine-42623: Adds initials to the list of default gratavar options
* Feature redmine-42630: Introduce reaction feature to issues, notes, news, and forums
* Feature redmine-42684: Add a sticky header to keep the issue subject visible on scroll
* Patch redmine-42596: Do not show user icon in add watchers modal when gravatar is disabled
* Patch redmine-42625: Adjust padding of the copy-to-clipboard button in pre tag
* Patch redmine-42641: Improve SVG contrast when an item is selected in administration sidebar

### Wiki

* Defect redmine-42558: JPEG images are not shown in exported PDF files

## RedMica 3.1.7 - 2025-04-15

### Attachments

* Defect redmine-42394: Inconsistent behaviour between attachment download routes with and without filename

### Code cleanup/refactoring

* Patch redmine-42514: Fix rubocop offence "Layout/LineLength: Line is too long"
* Patch redmine-42562: Fix random test failure in ProjectAdminQueryTest due to missing language setting
* Patch redmine-42572: Fix random test failure in MemberTest#test_update_roles_with_inherited_roles due to non-deterministic ordering

### Custom fields

* Defect redmine-42342: Missing thousands separator in Integer and Float custom field totals

### Gantt

* Defect redmine-42145: MiniMagick (> 5) removed cli_path, result crash when supplied imagemagick_convert_command

### Issues

* Defect redmine-42458: "For all projects" checkbox should be disabled when editing an existing query in which the checkbox is already checked

### Performance

* Defect redmine-35927: Slow loading of /time_entries/new
* Defect redmine-40728: Slow loading of global spent time list in MySQL

### Projects

* Patch redmine-42440: Fix project selector focus by explicitly targeting the first selected item

### SCM

* Patch redmine-42500: Skip repository tests when the SCM client command is unavailable

### UI

* Defect redmine-41833: Tabs left / right buttons use legacy icons
* Defect redmine-41947: Collapse arrow shows the wrong direction at /workflows/edit
* Defect redmine-41952: Flash notice icons use the legacy icons 
* Defect redmine-41967: Replace SCM action legacy icons with SVG icons in the tree view of the repository browser
* Defect redmine-42181: Project jump box uses legacy caret icons
* Defect redmine-42285: Icon expanded for closed fixed versions missing
* Defect redmine-42286: Context menu right arrow uses the legacy icon
* Defect redmine-42369: Expander icons not switch in Collapse all/Expand all 
* Defect redmine-42465: Improve SVG icon compatibility with RTL languages
* Defect redmine-42487: Improve SVG contrast when a row is selected on table list
* Defect redmine-42520: PNG icon displayed instead of SVG in subtasks list when viewing all tasks
* Defect redmine-42532: Expander icon not working in repository tree
* Defect redmine-42575: Fix sidebar switch button display in RTL language
* Patch redmine-42497: Adjust the position of the news comment delete button

## RedMica 3.1.6 - 2025-03-12

### Security

* Unknown redmine-42194: my/account does not correctly enforce sudo mode
* Unknown redmine-42238: Stored Cross-Site Scripting (XSS) in custom query
* Unknown redmine-42326: Stored Cross-Site Scripting (XSS) in macros
* Unknown redmine-42333: Update Nokogiri to 1.18.3
* Unknown redmine-42352: ProjectQuery leaks details of private projects

## RedMica 3.1.5 - 2025-02-28

* Update Bleuclair theme to 1.0.4

## RedMica 3.1.4 - 2025-02-14

### Administration

* Feature redmine-42008: Expose default Rails health check endpoint "/up" for load balancers and uptime monitoring

### Code cleanup/refactoring

* Defect redmine-42200: InlineAutocompleteSystemTest login test fails randomly
* Patch redmine-42244: Fix random failures in IssuesTest#test_bulk_copy due to StaleElementReferenceError

### Custom fields

* Defect redmine-42233: Float custom values with ',' as decimal separator are not converted to '.' and cause SQL errors when sorting or summing

### Project settings

* Defect redmine-42192: Project settings members tab may raise ArgumentError if orphaned member records exist

### Time tracking

* Defect redmine-42172: `format_hours` method produces incorrect output for negative time values when `Setting.timespan_format` is "minutes"

### Translations

* Defect redmine-42170: Fix Turkish translation of field_assignable
* Patch redmine-42239: Czech translation update for 6.0-stable

### UI

* Defect redmine-42126: The member table layout breaks due to .icon class on td elements
* Defect redmine-42130: Multiselect toggle uses legacy icons
* Defect redmine-42229: Latest news box on home page misses icons

### UI - Responsive

* Defect redmine-42182: Poor color contrast of icons on flyout menu

## RedMica 3.1.3 - 2025-01-22

### Activity view

* Defect redmine-42003: Misalignment of icons and titles in Activity view
* Defect redmine-42070: Whitespace missing after hyphen between project name and event title in Activity view
* Feature redmine-42038: Improve readability by adjusting font sizes and colors in activity view and search results

### Attachments

* Defect redmine-42084: Placeholder icon for non-existent thumbnail flickers rapidly on hover

### Code cleanup/refactoring

* Patch redmine-41961: Use `fixtures :all` to ensure consistent test data and improve test reliability
* Patch redmine-42140: Update footer copyright year to 2025

### Gantt

* Defect redmine-41925: Context menu submenus close unexpectedly on Gantt chart due to z-index conflict

### Gems support

* Defect redmine-42013: Redmine fails to start with error: Unknown database adapter `"mysql2"` found in config/database.yml

### Issues

* Defect redmine-42066: NoMethodError exception occurs in IssuePriority#high and #low when both default and active priorities are absent

### Permissions and roles

* Defect redmine-42106: Member roles are incorrectly added when a user's memberships are updated

### Rails support

* Patch redmine-41970: Updates Rails to 7.2.2.1

### UI

* Defect redmine-41918: Replaces warning icon with SVG in watcher list and workflow warnings
* Defect redmine-42023: Search results page uses legacy icons
* Defect redmine-42051: "Font used for text areas" setting causes inconsistent font size
* Defect redmine-42117: Key-value list reorder icon uses legacy icon
* Feature redmine-42005: Improve readability of error pages by updating fonts and layout
* Feature redmine-42072: Adjust font size for breadcrumb and subtitle to improve readability and consistency

## RedMica 3.1.2 - 2024-12-11

### Accounts / authentication

* Feature redmine-41927: Enable browser autocomplete for 2FA input fields
* Feature redmine-41937: Enable browser autocomplete for login input fields

### Code cleanup/refactoring

* Patch redmine-41951: Fix random test failure in IssueTest due to unsorted expected_statuses

### Documentation

* Feature redmine-41754: Add asset precompilation instructions to doc/INSTALL and doc/UPGRADING

### Issues

* Defect redmine-40301: Error when create a version with custom field of "File" type from Issue page

### Plugin API

* Defect redmine-41880: Plugin activity icons broken after switching to SVG icons

### SCM

* Patch redmine-41775: Adjust the vertical alignment of icons in the tree view of the repository browser

### UI

* Defect redmine-41714: Replace search and magnifier icons with SVG icon
* Defect redmine-41853: Group icons in watchers and membership modals are using a mix of legacy and SVG icons
* Defect redmine-41957: Remove nesting selectors because are not support in old browsers

## RedMica 3.1.1 - 2024-12-04

### Code cleanup/refactoring

* Defect redmine-41795: Missing fixture: a test does not pass if the 'issue_categories' fixtures are not already loaded
* Patch redmine-41861: Add License URLs to Icons Credits
* Patch redmine-41881: Improper deletion of custom fields in IssueNestedSetConcurrencyTest causes test failures of other tests
* Patch redmine-41889: Fix random test failures in Redmine::Acts::MentionableTest due to unsorted mentioned_users
* Patch redmine-41894: Fix random test failure by ensuring WatchersController#find_objects_from_params returns results in consistent order
* Patch redmine-41901: Fix random test failure in DestroyProjectsJobTest due to unsorted @projects
* Patch redmine-41902: Fix class name to match file name in keyboard_shortcuts_test.rb
* Patch redmine-41914: Fix random test failure in UserTest#test_validate_password_complexity due to missing explicit language setting
* Patch redmine-41931: Fix random failures in IssueRelationTest#test_create_with_initialized_journals due to ambiguous conditions for retrieving the expected detail
* Patch redmine-41934: Fix random test failure in ProjectsControllerTest::test_post_copy_should_copy_requested_items due to missing :issue_categories fixture

### Gems support

* Defect redmine-41860: FrozenError when using SQLite3 gem version 2.0.0 or later

### REST API

* Defect redmine-41791: Projects endpoint returns list of all projects
* Defect redmine-41819: Time entry API returning `hours` as Rational instead of Float

### Time tracking

* Defect redmine-41895: Spent time CSV report returning `hours` as Rational instead of Float

### UI

* Defect redmine-41789: HTML syntax broken for sidebar-wrapper
* Defect redmine-41818: Redundant tooltip appearing after clicking the ellipsis button in the action menus
* Defect redmine-41821: Icons shrink in the Activity view when event titles are long
* Defect redmine-41864: Report tab of Spent time page still displays deprecated raster icons instead of SVGs
* Defect redmine-41873: Table layout breaks due to .icon class on td elements
* Defect redmine-41883: Download button in issue comments still uses deprecated raster icon

### UI - Responsive

* Defect redmine-41822: First icon on the Activity page is replaced with chevrons-left or chevrons-right in responsive mode

## RedMica 3.1.0 - 2024-11-19

### Accounts / authentication

* Feature redmine-37279: Reject passwords that are the same as login, first name, last name, or email
* Feature redmine-38853: Changes user visibility from "all" to "member of visible projects" for new roles and existing builtin roles

### Administration

* Feature redmine-12521: Improve tracker deletion error message to display projects containing issues under the tracker 
* Feature redmine-40913: Add bulk lock/unlock feature to user list context menu

### Attachments

* Defect redmine-38966: Attachment custom fields not removed when issue is deleted

### Calendar

* Patch redmine-41509: Replace "even" and "odd" CSS classes with "this-month" and "other-month" for calendar days

### Code cleanup/refactoring

* Patch redmine-27510: Introduce active? method to Group via Principal model
* Patch redmine-32523: Replace `for` loops with `forEach` in buildFilterRow function
* Patch redmine-35648: Changelog generator should allow merging two or more versions
* Patch redmine-40801: Add missing fixture journal_details to JournalsHelperTest
* Patch redmine-40882: Remove unused "label_browse" from all locales
* Patch redmine-41023: Set default age parameter for User.prune to 30 days
* Patch redmine-41141: Replace deprecated `ActiveSupport::Deprecation.warn` with custom deprecation object
* Patch redmine-41142: Add missing assertion in Redmine::MenuManager::MapperTest#test_push_onto_root
* Patch redmine-41188: Refactor Calendar#first_wday method for improved readability and efficiency
* Patch redmine-41238: Fix test failure in IssuesSystemTest due to incorrect attachment count expectation
* Patch redmine-41287: Add .vscode to svn:ignore, .gitignore, and .hgignore
* Patch redmine-41402: Remove Internet Explorer-specific CSS rules and vendor prefixes
* Patch redmine-41623: Fix tests that randomly failed due to required fixtures not being loaded
* Patch redmine-7770: use unless in control structures where it improves readability

### Custom fields

* Feature redmine-39997: Add an option to render values of Integer- and Float-format custom fields with thousands delimiters

### Database

* Patch redmine-34218: Increase size of value field in settings

### Documentation

* Patch redmine-40202: Add LICENSE.txt in the root directory
* Patch redmine-41011: Add more configuration examples to config/additional_environment.rb.example
* Patch redmine-41469: Update helps and docs to use HTTPS links instead of HTTP

### Email notifications

* Feature redmine-13359: Add project identifier to List-Id header in notification emails for better Gmail filtering
* Feature redmine-41450: Include attachment filename in "File added" email notification subject

### Email receiving

* Defect redmine-41737: Deprecation warning for IMAP4 email receiving: "Call Net::IMAP.new with keyword options"

### Gantt

* Defect redmine-41447: Gantt collapse/expand buttons are not available
* Defect redmine-41786: Long subject may not be displayed in Gantt chart with narrow column width

### Gems support

* Defect redmine-41729: Installing Redmine 6.0.0 may cause a LoadError for svg_sprite
* Defect redmine-41749: Warning during startup: "Unresolved or ambiguous specs during Gem::Specification.reset"
* Patch redmine-39887: Update RuboCop to 1.68
* Patch redmine-39888: Update RuboCop Performance to 1.22
* Patch redmine-39889: Update RuboCop Rails to 2.27
* Patch redmine-40197: Update commonmark to 1.1
* Patch redmine-40849: Update MiniMagick to 4.13
* Patch redmine-41312: Update MiniMagick to 5.0
* Patch redmine-41723: Update roadie-rails to 3.3
* Patch redmine-41728: Update Rouge gem to 4.5
* Patch redmine-41761: Update Rubocop Performance to 1.23

### Hook requests

* Feature redmine-41044: Add view hooks in My page

### I18n

* Defect redmine-37072: Capitalization issue for object names in I18n keys: button_save_object, button_edit_object, and button_delete_object

### Importers

* Defect redmine-41464: CSV file encoding auto-detection may fail with multibyte characters
* Defect redmine-41465: "Import issues" and "Import time entries" pages are visible to users without "Add issues" and "Log spent time" permissions

### Issues

* Defect redmine-41572: `updated_by_id` in Journal retains deleted user id instead of being set to `User.anonymous`
* Feature redmine-16045: Add "Author / Previous assignee" group to assignee dropdown in issue form
* Feature redmine-36197: Add configurable setting for copying attachments when copying an issue
* Feature redmine-41202: Change the default CSV export encoding to UTF-8
* Feature redmine-691: Add column totals to Issues Summary Report
* Feature redmine-9309: Add description field to custom queries

### Issues filter

* Feature redmine-7867: Add filters for "Author's group" and "Author's role" to issues list

### Issues list

* Defect redmine-40303: Layout distortion in issue list descriptions with code blocks

### Performance

* Patch redmine-40775: Reduce an extra SQL query in IssuesController#retrieve_default_query
* Patch redmine-40798: Optimize Version model

### Projects

* Feature redmine-40829: Expose project updated_on column and filter in project query
* Patch redmine-41678: Fix lost backward compatibility about return type of ProjectQuery#results_scope

### Rails support

* Feature redmine-36320: Migrate to Rails 7.2

### Ruby support

* Feature redmine-38585: Drop Ruby 2.7 and 3.0 support

### SCM

* Defect redmine-40948: ActiveRecord::ValueTooLong error with git author longer than 255 characters

### Search engine

* Feature redmine-38446: Support multiple multi-word phrases in the search engine

### Security

* Defect redmine-40946: Watcher list visible with only add watchers permissions

### Text formatting

* Defect redmine-34473: Displaying the table of content on the right causes wrong position
* Defect redmine-41513: Error after update to revision 23153
* Feature redmine-40149: Drop deprecated Redcarpet based Markdown formatter
* Patch redmine-40014: Add support for quoted arguments containing commas in wiki macros
* Patch redmine-40939: Add "underline" button to jsToolbar for CommonMark Markdown formatting

### Themes

* Defect redmine-26778: Invalid "theme-*" CSS class in body element when theme name contains spaces

### Third-party libraries

* Feature redmine-40853: Upgrade jQuery to 3.7.1
* Feature redmine-40864: Upgrade jQuery UI to 1.13.3

### Time tracking

* Defect redmine-36897: The minutes part of a time entry is displayed as 60 instead of being carried over
* Defect redmine-40914: Fix precision issues in TimeEntry#hours calculation by returning Rational instead of Float
* Feature redmine-41053: Add "User's group" and "User's role" filters to Spent time list
* Patch redmine-1671: Show a breakdown of estimated/spent/remaining time for a version

### Translations

* Patch redmine-40875: Improve Czech translation for "two-factor authentication"
* Patch redmine-40950: Improve english translation for invalid watcher notice
* Patch redmine-41420: Italian translation update for 5.1-stable
* Patch redmine-41736: Update Turkish translation of label_description from "Yorum" to "Açıklama"

### UI

* Defect redmine-38915: Duplicate spacer id in jsToolBar
* Defect redmine-41712: Fix Path for Plugin Assets Added by Rake Task
* Defect redmine-41721: Principal link text with special characters not displayed correctly after r23222
* Defect redmine-41724: Missing key icon image on Change password button
* Defect redmine-41756: An unnecessary scroll bar is displayed on the user's profile page
* Defect redmine-41778: Name field in custom query creation/edit form is not marked as required
* Defect redmine-41779: Restore `margin-top` for `#sidebar h3`
* Defect redmine-41780: Unnecessary indentation for "Completed versions" in the Roadmap sidebar
* Feature redmine-21808: Make the Sidebar collapsible, stateful
* Feature redmine-23980: Replace icon images with Tabler SVG icons
* Feature redmine-2464: Add placeholder "h:mm" to hours field for better user guidance
* Feature redmine-2499: Change CSS font-size units from px to rem to respect browser font settings
* Feature redmine-40901: Disable custom query links while loading to prevent multiple requests
* Feature redmine-41266: Improve header design with gradient background
* Feature redmine-41272: Improve tooltip positioning for thumbnails
* Feature redmine-41294: Partial quoting feature for Issues and Forums
* Feature redmine-41298: Refine UI with updated box styling and border colors
* Feature redmine-41321: Improve readability by refining font sizes and switching to Noto Sans font
* Feature redmine-41475: Improve table readability by adding row borders
* Feature redmine-41500: Swap odd and even table row background colors
* Feature redmine-41748: Optimize font loading by replacing variable fonts with specific weights for Noto Sans
* Patch redmine-41231: Expand the width of the estimated hours input field
* Patch redmine-41569: Use custom properies to font-family
* Patch redmine-41624: CSS-fix to prevent 'blinking' tooltips
* Patch redmine-41710: Checkmarks in tables still have the old icon style
* Patch redmine-41711: Group icons in members box still have the old icon style
* Patch redmine-41720: Switch checked icon in context menu to SVG icon

## RedMica 3.0.4 - 2024-10-18

### Code cleanup/refactoring

* Patch redmine-41313: Fix test/unit/issue_test.rb to use correct IANA timezone name "Asia/Hong_Kong" instead of deprecated "Hongkong"

### Gantt

* Defect redmine-41263: Gantt progress line misrendering for 0% progress issues/versions with future start dates beyond chart range

### Rails support

* Update Rails to 7.1.4.1

### Text formatting

* Defect redmine-41467: Unexpected font size on CommonMark Markdown help pages due to missing doctype declaration

### Time tracking

* Defect redmine-41401: Hours column in "Details" tab of Spent time is not right-aligned

## RedMica 3.0.3 - 2024-09-18

### Forums

* Defect redmine-41234: Forum message's subject field overflows beyond container

### Issues

* Defect redmine-8539: Fix NoMethodError in Issue#blocked? due to invalid issue_from_id in Issue#relations_from

### Projects

* Defect redmine-41217: Broken project list table when filter scheduled for deletion

### Text formatting

* Defect redmine-41096: "##" syntax auto complete does not work

## RedMica 3.0.2 - 2024-08-28

### Filters

* Defect redmine-41079: Incorrect sorting of users grouped by status in issue filters for administrators

### Gems support

* Patch redmine-39889: Update RuboCop Rails to 2.25

### I18n

* Defect redmine-39778: Untranslated string "OK" in the repository browser

### Issues

* Defect redmine-40860: Creating a new issue fails with an internal error if no issue priorities are defined

### Time tracking

* Defect redmine-40924: Spent Hours ignoring "Time Span Format" Setting on several pages

### Wiki

* Defect redmine-40655: Revisions count is wrong on the wiki content page
* Defect redmine-40716: "Edit this section" on Wiki pages misinterprets issue links with double hash (##nnn) as ATX headings

## RedMica 3.0.1 - 2024-06-27

### Gems support

* Patch redmine-40802: Support builder 3.3.0

## RedMica 3.0.0 - 2024-05-30

### Accounts / authentication

* Defect redmine-28243: Principal.not_member_of scope does not accept ActiveRecord::Relation
* Feature redmine-39500: Change the default notification option for users to "Only for things I watch or I am assigned to"

### Attachments

* Feature redmine-37530: Add timeout for thumbnail generation process

### Code cleanup/refactoring

* Defect redmine-31507: Test fails if trailing whitespaces are removed
* Defect redmine-31831: Back url parse in validation
* Defect redmine-32985: Remove unnecessary use of instance variables in CSV and Atom response handlers
* Defect redmine-37730: Missing copyright headers in source files
* Defect redmine-39527: Deprecate unused ApplicationHelper#render_if_exist
* Defect redmine-40205: ThemesTest may fail if a third-party theme having theme.js is installed
* Defect redmine-40239: Add missing fixtures in Redmine::ApiTest::IssuesTest
* Feature redmine-39111: Enable Asset Pipeline Integration using Propshaft
* Feature redmine-40190: Stop appending the utf8 checkmark parameter to form URLs
* Patch redmine-35217: Replace use of Digest::MD5 / Digest::SHA1 with ActiveSupport::Digest
* Patch redmine-38975: Use ApplicationRecord instead of ActiveRecord::Base
* Patch redmine-39110: Replacing request_store with ActiveSupport::CurrentAttributes
* Patch redmine-39777: Remove useless method #run_in_request? from db/migrate/20221214173537_add_select_project_publicity_permission.rb
* Patch redmine-39971: Remove specific platform constraints for database adapter gems
* Patch redmine-39999: Explicitly render a 404 on non-JS requests to messages#quote
* Patch redmine-40043: Remove year ranges from all copyright headers
* Patch redmine-40087: Rewrite ApplicationHelper#favicon_url method using image_url
* Patch redmine-40124: Remove deprecated empty status param to get all users from API
* Patch redmine-40210: Remove overrides that inserts a non-breaking space (nbsp) to empty option elements
* Patch redmine-40211: Remove appveyor.yml
* Patch redmine-40506: Remove redundant ApplicationHelper inclusions
* Patch redmine-40513: Fix initial_page_content method to avoid referencing @page instance variable in wiki formatting helpers
* Patch redmine-40559: Fix incorrect icon image paths for Wiki help pages
* Patch redmine-40652: Replace MD5 with SHA256 when creating the hash for gravatar URL
* Patch redmine-40691: Remove ambiguity in queries utilizing a Project scope

### Custom fields

* Defect redmine-27543: Key/value-pair custom field type not available to all customisable contents

### Documentation

* Feature redmine-40681: Dynamic generation of supported code highlighting languages in help section

### Email notifications

* Feature redmine-40569: Add an option to send email notification when an attachment is added

### Feeds

* Defect redmine-33829: Fix Atom feed for issues to correctly use the updated time for "updated" element instead of the created time
* Feature redmine-34025: Raise the maximum length of the title element in the Atom feed from 100 to 300 characters

### Filters

* Defect redmine-39714: Query grouping filter not working for custom field relations

### Gems support

* Patch redmine-37258: Switch default backend of ActiveSupport::XmlMini from rexml to Nokogiri
* Patch redmine-39887: Update RuboCop to 1.64
* Patch redmine-39888: Update RuboCop Performance to 1.21
* Patch redmine-39889: Update RuboCop Rails to 2.25
* Patch redmine-39972: Update Nokogiri to 1.16.0
* Patch redmine-39985: Update SQLite3 gem to 1.7
* Patch redmine-40148: Update activerecord-sqlserver-adapter to 7.1
* Patch redmine-40685: Update roadie-rails to 3.2.0

### I18n

* Feature redmine-21677: Support localized decimal separator for hours in the web UI
* Feature redmine-22024: Support localized decimal separators for float values
* Feature redmine-29208: Support email addresses with IDN (internationalized domain names) in user accounts
* Patch redmine-39879: Fix hardcoded string on user preferences page

### Issues

* Defect redmine-40412: Issue list filter "Watched by: me" only shows issues watched via group for projects with the view_issue_watchers permission
* Feature redmine-31756: Introduce configuration for done ratio options interval

### Issues filter

* Feature redmine-39805: Extend "contains" operator in "Parent task" filter to support multiple issue IDs

### Issues list

* Feature redmine-29894: View watchers on the issue list
* Patch redmine-37862: Estimated time remaining issue query column

### Issues workflow

* Patch redmine-40693: Ignore status in roleld_up_status if workflow only defines identity transition

### Performance

* Defect redmine-40610: Slow display of projects list when including project description column
* Patch redmine-23328: Optimize Project#notified_users to improve issue create/update speed
* Patch redmine-39835: Optimize repository menu visibility check
* Patch redmine-39837: Optimize query models by replacing `map` with `pluck`
* Patch redmine-39840: Optimize `Issue#relations` method to fetch both `relations_from` and `relations_to` using a single query
* Patch redmine-39847: Cache the result of `Journal#attachments`
* Patch redmine-39849: Optimize IssueCategory SQL queries when showing an issue
* Patch redmine-39852: Optimize queries visibility check
* Patch redmine-39857: Optimize users visibility check
* Patch redmine-39993: Optimize loading of journals, relations, and allowed_statuses in IssuesController#show for API requests
* Patch redmine-40000: Optimize gantt chart rendering for issues without subtasks
* Patch redmine-40008: Replace String#sub with delete_prefix / delete_suffix
* Patch redmine-40010: Replace regular expression matches with String#start_with? / end_with?

### Plugin API

* Defect redmine-39862: Attachments functionality for (custom) plugins broken since fix for CVE-2022-44030
* Feature redmine-39948: Add Redmine::Plugin proxy method for Redmine::Acts::Attachable::ObjectTypeConstraint.register_object_type

### Projects

* Feature redmine-23954: Shows the date of the last activity on Projects administration
* Feature redmine-40706: Enhance "Last activity" column to link to project activity page

### REST API

* Defect redmine-39760: Some API tests fail with Ruby 2.7
* Feature redmine-23307: Include auth_source field in User API response
* Feature redmine-38948: Add user status to users list API
* Feature redmine-40449: Add updated_on and updated_by fields to Issues API journal response

### Rails support

* Defect redmine-38155: RuntimeError when reloading Rails console
* Defect redmine-39834: Extract tests for plugin autoloading and Restore Plugin directory settings
* Defect redmine-40204: `rake redmine:plugins` fails with the error "Don't know how to build task 'redmine:plugins:assets'"
* Feature redmine-36320: Migrate to Rails 7.1
* Feature redmine-40092: Drop FastCGI support

### Roadmap

* Defect redmine-24457: Progress of version should be calculated the same way as parent tasks
* Defect redmine-4682: Completed version with wrong progress bar status

### Ruby support

* Feature redmine-38585: Drop Ruby 2.7 support
* Feature redmine-39761: Ruby 3.3 support

### SCM

* Defect redmine-37626: Diff of a javascript file in repository module is not displayed with layout 
* Defect redmine-37732: Fix "DEPRECATION WARNING: Rendering actions with '.' in the name is deprecated" in RepositoriesController
* Defect redmine-39747: Diff of a javascript file in repository module is not displayed with layout 
* Defect redmine-40020: ScmData.binary? incorrectly considers UTF-8 text as binary

### Text formatting

* Defect redmine-40515: Displaying issue descriptions in the issues list ignores CommonMark table alignment
* Defect redmine-40650: Fix duplicate alt and title attributes when alt text is specified for attached images in Textile formatter
* Feature redmine-36594: Relax rouge version dependency in Gemfile
* Patch redmine-40137: Jstoolbar help files should import images from the asset pipeline

### UI

* Defect redmine-37390: Extraneous whitespace when selecting and copying issue number on Chrome/Windows
* Defect redmine-39795: Fix improper error highlighting for description field in issue form
* Patch redmine-33638: Add informative default welcome text for new installations

### UI - Responsive

* Feature redmine-39806: Improve filter rendering on narrow screens by replacing the layout tables with a flex layout

## RedMica 2.4.3 - 2024-07-03

### Gems support

* Patch redmine-40802: Support builder 3.3.0

## RedMica 2.4.2 - 2024-05-10

### Administration

* Defect redmine-40166: Internationalize "Check all / Uncheck all" tooltip in project list for admins

### Gems support

* Defect redmine-40603: Mocha 2.2.0 causes test failure: "unexpected invocation"

### Issues

* Defect redmine-40410: Watcher groups on new issue form get dereferenced on validation error
* Feature redmine-40556: Focus on the textarea after clicking the Edit Journal button

### REST API

* Defect redmine-40099: User api filtering by status=* broke on upgrade from 5.0 to 5.1

### SEO

* Defect redmine-40208: An ActionController::RespondToMismatchError occurred in welcome#robots

### Text formatting

* Defect redmine-40193: Performance issue with email address auto-linking in the default ("none") formatter

### UI

* Defect redmine-39780: User select element on activity sidebar views cutoff when displaying long user names
* Defect redmine-39802: Fix click event handling in mobile view after closing flyout menu
* Defect redmine-40237: Error in autocomplete (`ActionController::BadRequest (Invalid query parameters: invalid %-encoding (%)`)
* Defect redmine-40555: Watcher group checkbox on new issue form on validation error will be checked only submitted

## RedMica 2.4.1 - 2024-01-23

### Code cleanup/refactoring

* Patch redmine-39894: Explicitly render a 404 on non-JS requests to watchers#new

### Database

* Patch redmine-39592: Set transaction isolation level of MySQL to READ-COMMITTED in database.yml.example
* Patch redmine-39737: Support MySQL 8
* Patch redmine-39865: extend mysql8? test helper to handle complex version strings

### Filters

* Defect redmine-39714: Query grouping filter not working for custom field relations
* Defect redmine-39991: Fix "any" operator for text filters to exclude empty text values

### Issues

* Defect redmine-39932: Incorrect position of "Edited" mark in issue notes with h4 headings

### Text formatting

* Defect redmine-39755: CommonMark Markdown help page does not reflect user's language setting
* Feature redmine-39884: Allow multiple footnotes per single word

### Translations

* Defect redmine-39801: Fix typo in Russian translation of text_status_no_workflow

## RedMica 2.4.0 - 2023-11-24

### Accounts / authentication

* Defect redmine-36969: EmailAddress regex matches invalid email addresses
* Feature redmine-37679: Raise the maximum length of the last name to 255 characters

### Administration

* Feature redmine-36695: Add check in Redmine information page if default queue adapter is used in production
* Patch redmine-39181: /users backwards API compatibility 

### Calendar

* Feature redmine-33682: Display calendar in vertical list layout on mobile screens

### Code cleanup/refactoring

* Defect redmine-39180: Fix an intermittent test failure in JournalTest
* Patch redmine-36806: Remove rss_* deprecated methods
* Patch redmine-37668: Fix bad I18n `t` call in macro error handler
* Patch redmine-37974: Database migration to remove unused "mention_users" permission
* Patch redmine-38646: Remove unused locale entry: label_optgroup_others
* Patch redmine-38772: <=> should return nil when invoked with an incomparable object
* Patch redmine-39021: Add ".byebug_history" to svn:ignore, .gitignore, and .hgignore
* Patch redmine-39066: Remove set_language_if_valid from MyController
* Patch redmine-39109: Improving Test Reliability with Capybara Assertions
* Patch redmine-39184: Cleanup debug code in app/models/mail_handler.rb
* Patch redmine-39207: Replace `YAML.load` with `YAML.load_file` in locales.rake and improve error reporting for invalid YAML files
* Patch redmine-39380: Replace hardcoded issues count check with `limit` variable in IssuesController#retrieve_previous_and_next_issue_ids

### Database

* Defect redmine-39437: MySQL / MariaDB issue nested set deadlocks and consistency
* Defect redmine-39443: Invalid statement query error on MSSQL when role filter is used in issues query

### Email notifications

* Defect redmine-39553: Mention notification is not sent (MENTION_PATTERN / LINKS_RE inconsistency)

### Gems support

* Defect redmine-39576: `rake yard` does not work with Ruby >= 3.2
* Patch redmine-36919: Update RuboCop to 1.57
* Patch redmine-37236: Update Rouge to 4.2
* Patch redmine-37247: Update RuboCop Performance to 1.19
* Patch redmine-37248: Update RuboCop Rails to 2.22
* Patch redmine-37401: Update I18n to 1.14
* Patch redmine-37525: Update Pg to 1.5
* Patch redmine-37558: Update webdrivers to 5.0
* Patch redmine-39211: Update roadie-rails to 3.1
* Patch redmine-39547: Prevent automatic requiring of 'yard' gem

### Issues

* Defect redmine-38493: The related issues count on the issue view is not updated after deleting one of the related issues
* Defect redmine-39186: Missing synchronization between watchers and watcher_users for unsaved objects
* Defect redmine-39521: Mention autocomplete not displaying for users without "Edit issues" permission
* Feature redmine-2568: Description for issue statuses
* Feature redmine-37621: Add field separator option to CSV export dialog
* Patch redmine-38820: Retry in case of stale issue during Issue.update_versions

### PDF export

* Defect redmine-39534: Error (undefined method) in issue list PDF export

### Performance

* Patch redmine-38319: Optimize IssueQuery#sql_for_assigned_to_role_field for PostgreSQL performance

### Plugin API

* Defect redmine-38707: Fix order of loading plugins' config/routes.rb
* Feature redmine-38730: Generate snake-case file name by redmine_plugin_migration

### REST API

* Defect redmine-38668: Unable to retrieve custom fields set as "For all projects" via Projects API
* Feature redmine-39113: Add missing Homepage attribute in Projects API response

### SCM

* Feature redmine-39238: Redirect to repositories#show after repositories#fetch_changesets to avoid the user-visible browser URL

### Text formatting

* Defect redmine-38852: ## issue syntax is not kept when selecting an issue from the inline autocomplete

### Third-party libraries

* Feature redmine-39400: Migrate Stylelint to 15.11.0

### Translations

* Defect redmine-38391: Updated catalan translation for redmine
* Defect redmine-38871: Fix mistranslation of label_board_sticky in Spanish translation
* Feature redmine-34924: Add Tamil language support
* Patch redmine-29692: Bosnian localization update
* Patch redmine-33074: Korean translation update for 4.1-stable
* Patch redmine-34061: Update locales for Vietnamese language
* Patch redmine-36387: Updating Hungarian translation
* Patch redmine-38315: Translation for ru.yml
* Patch redmine-38544: Updated french translation.
* Patch redmine-38709: Update Persian translation to Redmine-5.0-stable
* Patch redmine-39020: Traditional Chinese translation (to 22290)
* Patch redmine-39032: Japanese translation update (r22289 )
* Patch redmine-39179: Czech localisation update
* Patch redmine-39192: Japanese translation update (r22344)
* Patch redmine-39195: Traditional Chinese translation update (to 22351)
* Patch redmine-39197: Turkish translation update
* Patch redmine-39215: Galician translation update
* Patch redmine-39221: Traditional Chinese translation update (to 22365)
* Patch redmine-39430: Japanese translation update (r22362)
* Patch redmine-39513: Bulgarian translation update for 5.1-stable
* Patch redmine-39551: Simplified Chinese translation update for 5.1-stable

### Wiki

* Defect redmine-34634: Deletion of project wiki leaves the project wiki inaccessible (404) until module reactivation

## RedMica 2.3.2 - 2023-10-02

### Gantt

* Defect redmine-38728: Correctly escape issue text in Gantt PNG export for ImageMagick convert

### Gems support

* Patch redmine-39070: Allow using the latest version of mocha even when using Ruby < 2.7

### PDF export

* Defect redmine-37694: CommonMark Markdown task list item markers are not exported to PDF

### Rails support

* Patch redmine-38374: Update Rails to 6.1.7.6

### Security

* Defect redmine-38417: XSS Vulnerability in Thumbnails
* Defect redmine-38806: XSS in Markdown formatter
* Defect redmine-38807: XSS in Textile formatter

### Text formatting

* Defect redmine-38697: Exception during thumbnail macro to image tag conversion in emails

### Time tracking

* Defect redmine-39079: NoMethodError when trying to remove the date of an existing time entry

## RedMica 2.3.1 - 2023-07-06

### Code cleanup/refactoring

* Defect redmine-38797: Fix incorrect argument format for assert_select

### Gems support

* Patch redmine-38181: Update Nokogiri to 1.15.2

### Issues

* Defect redmine-38788: "has been" and "has never been" filter operators can be very slow

### Rails support

* Patch redmine-38374: Update Rails to 6.1.7.4

## RedMica 2.3.0 - 2023-05-19

### Accounts / authentication

* Defect redmine-6254: Remove "Unknown user" notification on password request with non-existent email address

### Attachments

* Feature redmine-38168: WebP images support

### Calendar

* Feature redmine-27346: Use the new pagination style for the calendars view

### Code cleanup/refactoring

* Defect redmine-15667: Fix shadowing variable in ApplicationHelper#textilizable
* Defect redmine-20042: A test fail when running it with PostgreSQL
* Defect redmine-38145: Unreachable branch in ApplicationHelper#format_object due to the use of the deprecated Fixnum class
* Defect redmine-38250: config/settings.yml not closed in Setting.load_available_settings
* Patch redmine-38091: Fix redundant 'private' modifier in repositories_git_controller_test.rb
* Patch redmine-38093: Use require_relative instead of generating the full path for a file
* Patch redmine-38139: Add guard clause to time_tag method to handle nil time
* Patch redmine-38228: Remove X-UA-Compatible meta tag for Internet Explorer
* Patch redmine-38478: Remove unused i18n key label_last_login
* Patch redmine-38496: Add missing fixtures to SearchControllerTest

### Database

* Defect redmine-38210: Incorrect DB migration version

### Email notifications

* Feature redmine-34302:  Show parent issues in notification email
* Feature redmine-38238: Auto watch issues on issue creation
* Patch redmine-2746: Send out issue priority in the email notification header

### Email receiving

* Feature redmine-38263: Try importing journal replies as issue reply where applicable
* Feature redmine-38273: Improve errors in MailHandler: add MissingContainer and LockedTopic exception
* Feature redmine-38274: Receive e-mail replies to news and news comments
* Patch redmine-38408: Remove experimental flag from "Preferred part of multipart (HTML) emails" setting

### Filters

* Feature redmine-38435: "contains any of" operator for text filters to perform OR search of multiple terms
* Feature redmine-38456: OR search with multiple terms for "starts with" and "ends with" filter operators

### Gems support

* Patch redmine-36919: Update RuboCop to 1.51
* Patch redmine-37236: Update Rouge to 4.1
* Patch redmine-37247: Update RuboCop Performance to 1.17
* Patch redmine-37248: Update RuboCop Rails to 2.19
* Patch redmine-37401: Update I18n to 1.13
* Patch redmine-37993: Update Mail gem to 2.8
* Patch redmine-38121: Update MiniMagick to 4.12
* Patch redmine-38122: Remove Bundler from requirements 
* Patch redmine-38124: Update csv, net-imap, net-pop, and net-smtp gems to the same versions shipped with Ruby 3.2.0
* Patch redmine-38137: Update SimpleCov to 0.22
* Patch redmine-38181: Update Nokogiri to 1.14
* Patch redmine-38187: Update SQLite3 gem to 1.6
* Patch redmine-38220: Update Redcarpet to 3.6

### I18n

* Defect redmine-38509: Untranslated string "OK" in the repository browser
* Patch redmine-38529: Limit available locales to those defined by Redmine itself

### Issues

* Defect redmine-38458: Display order of watchers in the sidebar is indeterminate
* Feature redmine-38416: Ability to disable the priority field

### Issues filter

* Feature redmine-38301: Multiple issue ids in "Related to" filter
* Feature redmine-38402: "Any searchable text" filter for issues
* Feature redmine-38527: New issues filter operators "has been", "has never been", and "changed from"

### News

* Patch redmine-2631: Add breadcrumbs to news pages

### PDF export

* Feature redmine-38368: WebP images support in PDF output

### Performance

* Patch redmine-38146: Fix all performance-related RuboCop offenses
* Patch redmine-38198: Improve MySQL query plan for Project#project_condition
* Patch redmine-38474: Preload default_status when listing trackers

### Permissions and roles

* Feature redmine-38048: Introduce permission to set a project public

### Rails support

* Patch redmine-38216: Add template filenames as comments to HTML output in development mode

### Roadmap

* Feature redmine-36679: Export a version as changelog text

### Ruby support

* Defect redmine-38100: Ruby 3.2: Encoding::CompatibilityError when running ChangesetTest#test_invalid_utf8_sequences_in_comments_should_be_replaced_latin1
* Feature redmine-38099: Ruby 3.2 support
* Feature redmine-38134: Drop Ruby 2.6 support

### SCM

* Feature redmine-35432: Git: View annotation prior to the change

### SEO

* Defect redmine-38201: Fix robots.txt to disallow issue lists with a sort or query_id parameter in any position

### Search engine

* Feature redmine-38459: Support "My bookmarks" in the search
* Feature redmine-38481: Further narrow search results with issues filter

### Text formatting

* Feature redmine-38372: Use Commonmarker instead of Redcarpet by default when rendering Markdown attachments

### Third-party libraries

* Patch redmine-38162: Update jQuery UI Datepicker i18n files to 1.13.2

### Time tracking

* Feature redmine-27821: "Issue's subject" filter for spent time
* Feature redmine-37623: Add Parent task filter and column to Spent time

### Translations

* Defect redmine-38477: Fix the English and Japanese translations of field_last_login_on
* Defect redmine-38507: Fix typo in French translation of setting_bulk_download_max_size
* Patch redmine-38054: Remove unused i18n keys label_sort_highest, label_sort_higher, label_sort_lower, and label_sort_lowest
* Patch redmine-38092: Turkish translation update
* Patch redmine-38171: Galician translation update
* Patch redmine-38192: Traditional Chinese translation (to r22061)
* Patch redmine-38208: Japanese translation update (r22039)
* Patch redmine-38306: Japanese translation update (r22117)
* Patch redmine-38327: Bulgarian translation
* Patch redmine-38328: Polish translation update (r22133)
* Patch redmine-38332: Traditional Chinese translation (to 22120)
* Patch redmine-38412: Japanese translation update (r22167)
* Patch redmine-38419: German translation update
* Patch redmine-38422: Bulgarian translation (#38402)
* Patch redmine-38451: Traditional Chinese translation (to 22185)
* Patch redmine-38455: Japanese translation update (r22189)
* Patch redmine-38457: Traditional Chinese translation (to 22200)
* Patch redmine-38489: Bulgarian translation
* Patch redmine-38497: Japanese translation update (r22213)
* Patch redmine-38503: Japanese translation update (r22218)
* Patch redmine-38516: Traditional Chinese translation (to 22221)
* Patch redmine-38523: Polish translation update (r22231)
* Patch redmine-38533: Improve the clarity of German translation of label_user_mail_notify_about_high_priority_issues_html
* Patch redmine-38537: Traditional Chinese translation (to 22241)
* Patch redmine-38545: Japanese translation update (r22241)
* Patch redmine-38551: Bulgarian translation
* Patch redmine-38564:  Galician translation update

### UI

* Defect redmine-33502: Issue field labels for fields with descriptions are missing styling on issues show view
* Feature redmine-38231: Limit the year to 4 digits in date input
* Patch redmine-38449: Align buttons in modal dialogs to the left instead of right

### UI - Responsive

* Patch redmine-38360: Do not apply table-layout:fixed in potentially wide tables of detailed issue reports

## RedMica 2.2.3 - 2023-04-21

### Custom fields

* Defect redmine-38464: Rendering a custom field with a URL pattern set and containing " :" in the value raises Addressable::URI::InvalidURIError

### Groups

* Defect redmine-38443: Cannot add a user to a group if the group is a member without roles in a certain project

### Project settings

* Defect redmine-37166: Roles of a project member should not be made empty

### Projects

* Defect redmine-38286: "Cannot delete enumeration" error may occur when attempting to delete a project with time entries

### UI

* Defect redmine-38448: The margin below the Submit button on the issue edit page is too narrow

## RedMica 2.2.2 - 2023-03-24

### Accounts / authentication

* Defect redmine-38182: Exporting users query does not use the query name as file name

### Rails support

* Patch redmine-38374: Update Rails to 6.1.7.3

### UI

* Patch redmine-38359: Render numeric axes in charts as Integers

## RedMica 2.2.1 - 2023-02-17

### Code cleanup/refactoring

* Patch redmine-37938: Unused permission "Mention user"
* Patch redmine-38141: Update copyright year to 2023

### Documentation

* Defect redmine-37983: Duplicate vertical-align property in wiki_syntax.css
* Defect redmine-38114: Example plugin (extra/sample_plugin) breaks Activity page

### Gems support

* Defect redmine-38239: Test failure with Commonmarker 0.23.8
* Patch redmine-38135: Allow use of Puma 6.0.0 or later
* Patch redmine-38272: Update RBPDF to 1.21

### Groups

* Patch redmine-38144: Refactoring: Use Group.visible instead of manual visibility check in GroupsController

### Importers

* Defect redmine-38254: Time Entry Import fails to import custom fields with "User" format

### Issues

* Defect redmine-37755: Mentioning users with certain characters renders incorrectly
* Defect redmine-37958: Groups added to watchers are not shown as links
* Defect redmine-38217: "Property changes" tab does not appear when all issue journals have both notes and property changes

### Project settings

* Patch redmine-38064: Avoid exception when adding a project without any givable roles defined

### Projects

* Defect redmine-37925: Do not allow unkown display_type for query

### Rails support

* Defect redmine-36273: Modifying the source code of a plugin does not reload it after r21295
* Defect redmine-38199: Fix deprecation warning for db:structure:dump in db:migrate when using sql schema format
* Patch redmine-38191: Update Rails to 6.1.7.2

### Security

* Defect redmine-37772: Access Control Issue in attachments#download_all

### SEO

* Patch redmine-38201: Improve robots.txt to disallow issue lists with a sort or query_id parameter in any position

### Text formatting

* Defect redmine-37881: Thumbnails are no longer fetched for all notes of an issue
* Defect redmine-38073: CommonMark Markdown formatter does not support min-width, max-width, min-height, and max-height CSS properties
* Defect redmine-38215: Nested CommonMark Markdown task lists are not indented

### Third-party libraries

* Patch redmine-37987: Update Stylelint to 14.16.0 

### Time tracking

* Defect redmine-35066: Missing project_id in redirect after clicking "Create and add another" button

## RedMica 2.2.0 - 2022-11-28

### Accounts / authentication

* Patch redmine-33660: Information text on sudo password entry
* Patch redmine-35450: Better validation error message when the domain of email is not allowed

### Administration

* Defect redmine-37692: Plugins page does not have a table header
* Feature redmine-37674: Upgrade Admin/Users list to use the query system

### Attachments

* Patch redmine-37597: Don't create two thumbnails of different resolutions for a single image

### Code cleanup/refactoring

* Defect redmine-37389: Add missing fixture to JournalObserverTest
* Defect redmine-37586: Typo in method names
* Defect redmine-37587: Unnecessary requirement in /lib/redmine/scm/adapters/filesystem_adapter.rb
* Feature redmine-37119: Drop redcarpet dependency for common_mark formatter
* Patch redmine-36844: Cleanup orphaned query and role ids from habtm join table queries_roles 
* Patch redmine-37448: Add missing fixture users to RoleTest
* Patch redmine-37451: Add missing fixture versions to IssuesPdfHelperTest
* Patch redmine-37466: Add missing fixture issue_categories to VersionTest
* Patch redmine-37469: Add missing fixture versions to RepositoryTest
* Patch redmine-37470: Add missing fixture versions to MailHandlerControllerTest 
* Patch redmine-37477: Add missing fixture issue_categories to MyControllerTest
* Patch redmine-37482: Replace JQuery `.focus()` method with HTML `autofocus` attribute
* Patch redmine-37507: Normalize HTML in app/views/setttings/_users.html.erb
* Patch redmine-37591: Use start_with? or end_with? to check the first or last character of a string
* Patch redmine-37599: Remove extra call of Attachment#thumbnailable? in AttachmentsController#thumbnail
* Patch redmine-37614: Cleanup app/models/repository/git.rb
* Patch redmine-37657: Rename Repository#supports_all_revisions? to Repository#supports_history?
* Patch redmine-37682: Add the `# frozen_string_literal: true` magic comment to config/initializers/secret_token.rb
* Patch redmine-37851: Add missing fixture to test/integration/issue_test.rb

### Custom fields

* Patch redmine-37750: Use existing html pipeline based sanitization for links in custom fields 

### Gems support

* Patch redmine-36919: Update RuboCop to 1.39
* Patch redmine-37236: Update Rouge to 3.30
* Patch redmine-37247: Update RuboCop Performance to 1.14
* Patch redmine-37248:  Update RuboCop Rails to 2.17
* Patch redmine-37401: Update I18n to 1.12
* Patch redmine-37525: Update Pg to 1.4
* Patch redmine-37656: Update sqlite3 gem to 1.5

### I18n

* Feature redmine-37878: Allow using ideographic space (U+3000) as a separator for search terms

### Issues

* Feature redmine-16207: Use query name as the file name when exporting queries 
* Feature redmine-37362: CSV export of issues report
* Patch redmine-31505: Mark edited journal notes as "Edited"
* Patch redmine-37532: Add CSS class for relation type to related issues list

### Issues workflow

* Defect redmine-37635: Respect Role#consider_workflow? when checking for allowed status transitions
* Patch redmine-37636:  Ignore statuses if workflow only defines identity transition

### Performance

* Patch redmine-29171: Add an index to improve the performance of issue queries involving custom fields
* Patch redmine-37528: Don't load changesets when IssuesController#show processes API requests without "include=changesets"
* Patch redmine-37687: Retrieve attachments with a single query when rendering a journal

### Permissions and roles

* Feature redmine-37807: Allow access to /robots.txt even if logins are required

### Plugin API

* Defect redmine-31116: Database migrations don't run correctly for plugins when specifying the `VERSION` env variable

### REST API

* Patch redmine-37617: Add description field to custom fields API

### Text formatting

* Feature redmine-34863: Change default text formatter for new installations from textile to common_mark

### Third-party libraries

* Patch redmine-37538: Update Chart.js to 3.9.1

### Time tracking

* Feature redmine-10314: Make the only enabled activity in a project the default one for time entry
* Feature redmine-29286: Add default spent time activity per role

### Translations

* Patch redmine-32435: Change Russian translation for "Submit"
* Patch redmine-37170: Bulgarian translation (#36691)
* Patch redmine-37252: Japanese translation update (r21602)
* Patch redmine-37371: Traditional Chinese translation (to r21693)
* Patch redmine-37397: Traditional Chinese translation (to r21701)
* Patch redmine-37455: Traditional Chinese translation (to r21714)
* Patch redmine-37479: Japanese translation update (r21714)
* Patch redmine-37526: Polish translation update
* Patch redmine-37527: Japanese translation update (r21740)
* Patch redmine-37535: Traditional Chinese translation (to r21740)
* Patch redmine-37548: Bulgarian translation
* Patch redmine-37563: Japanese translation update (r21764)
* Patch redmine-37569: Galician translation update
* Patch redmine-37592: Czech translation update
* Patch redmine-37604: Bulgarian translation (#29286)
* Patch redmine-37606: Traditional Chinese translation (to r21775)
* Patch redmine-37616: Traditional Chinese translation (to r21788)
* Patch redmine-37691: Japanese translation update (r21826)
* Patch redmine-37699: Traditional Chinese translation (to r21827)

### UI

* Feature redmine-1069: Open Help in a separate tab
* Feature redmine-36908: Improve wording on password change form

## RedMica 2.1.1 - 2022-11-24

### Activity view

* Defect redmine-37875: Unnecessary closing li element when there is no "Next" button on Activity page

### Code cleanup/refactoring

* Defect redmine-37449: Passing a wrong parameter to `with_settings` in UserTest::test_random_password_include_required_characters
* Defect redmine-37609: Remove obsolete remnant public/images/openid-bg.gif

### Email notifications

* Defect redmine-37138: Mentions of users with "@" in their username
* Patch redmine-37065: When someone is member of watcher group, 'watched_by' may be wrong and incomplete

### Email receiving

* Defect redmine-37187: no-permission-check allows issue creation in closed/archived projects

### Filters

* Defect redmine-36940: Chained custom field filter doesn't work for User fields
* Defect redmine-37349: Chained custom field filter for User fields returns 500 internal server error when filtering after a float value

### Gems support

* Defect redmine-37249: Missing rexml gem causes errors in PUT - Adding the gem manually everything works
* Patch redmine-37867: Limit puma < 6.0.0 to avoid system test error
* Patch redmine-37883: Limit mocha version to < 2.0.0 when Ruby version is < 2.7 to avoid test error

### Issues

* Defect redmine-37151: The done ratio of a parent issue may not be 100% even if all subtasks have a done ratio of 100%
* Defect redmine-37369: Mention auto-complete not works in bulk-edit comments
* Defect redmine-37473: Focus IssueId not working when linking issues
* Defect redmine-37499: Default query should not be applied if the query is not allowed to be set as the default
* Patch redmine-37608: Check visibility for passed user in IssueQuery.default

### Issues list

* Defect redmine-37268: Performance problem with Redmine 4.2.7 and 5.0.2

### Issues workflow

* Defect redmine-37685: Read-only field permission for the project field is ignored if the current project has subprojects

### Plugin API

* Defect redmine-37476: Psych::DisallowedClass exception when loading default plugin settings
* Defect redmine-37719: Broken serialized columns, if saved time was with Rails 4.2

### Rails support

* Defect redmine-37814: Plugins that serialize Date or Time objects cause Psych::DisallowedClass exception
* Patch redmine-37452: Update Rails to 6.1.7

### SCM

* Defect redmine-33953: Repository tab is not displayed if no repository is set as the main repository
* Defect redmine-36258: Support revision without any message in Mercurial repositories
* Defect redmine-37585: Do not show "History" tab for content in Filesystem repository
* Defect redmine-37626: Diff of a javascript file in repository module is not displayed with layout
* Defect redmine-37718: Repository browser does not show "+" (plus sign) in filename

### SCM extra

* Defect redmine-37562: POST Requests to repository WS fail with "Can't verify CSRF token authenticity"
* Defect redmine-37256: Medium severity XSS security vulnerabilities (3x) in jQuery UI v1.12.1

### Security

* Defect redmine-37171: Ability to change the issue category or issue target version with nonexistent value for the specific project
* Defect redmine-37255: Information Leak in QueryAssociationColumn/QueryAssociationCustomFieldColumn
* Defect redmine-37492: Update jQuery UI to 1.13.2

### Text formatting

* Defect redmine-37237: Common Markdown Formatter does not render all properties on HTML elements
* Defect redmine-37379: Thumbnail macro does not work when a file is attached and preview is displayed immediately
* Patch redmine-37713: Add rel="noopener" to all external links that would open a new tab/window

### Time tracking

* Defect redmine-33914: Even if the default value of Activities (time tracking) is set, it may not be reflected.

### Translations

* Defect redmine-37529: Fix mistranslation of label button_create_and_follow in Russian translation
* Defect redmine-37603: Missing translation for label_default_queries.for_this_user
* Defect redmine-37812: "Yes" and "No" are swapped in Polish translation
* Patch redmine-35613: German translation update of Wiki syntax help for 5.0-stable
* Patch redmine-37263: Lithuanian translation update for 5.0-stable
* Patch redmine-37698: Persian translation update for 4.2-stable

### UI

* Defect redmine-36901: Jump to project is misaligned in Safari 15.4 and later
* Defect redmine-37282: Subtask isn't displayed correctly since 4.2.7
* Defect redmine-37481: Fix the unintentional selection of rows with the context menu
* Defect redmine-37566: The number of the ordered list in the project description is not displayed and the indentation does not match the unordered list

### UI - Responsive

* Defect redmine-36453: Issue subject overflow in subtasks and relations tables

## RedMica 2.1.0 - 2022-05-31

### Accounts / authentication

* Feature redmine-30998: Add an rake task to prune registered users after a certain number of days
* Feature redmine-33345: Include an authentication method name in LDAP connection error messages
* Feature redmine-35001: Disable API authentication with username and password when two-factor authentication is enabled for the user
* Feature redmine-35439: Option to require 2FA only for users with administration rights
* Feature redmine-36825: Increase email address length limit from 60 to 254

### Administration

* Feature redmine-32116: Add configured theme to Redmine::Info
* Feature redmine-33422: Re-implement admin project list using ProjectQuery system
* Feature redmine-35934: Show 2FA status in users list from administration with option to filter
* Feature redmine-36391: Change the default value for "Time span format" from "decimal" to "minutes"
* Patch redmine-36691: Background job and dedicated status for project deletion
* Patch redmine-36891: Ask more specific confirmation questions when closing/reopening/archiving projects

### Attachments

* Defect redmine-36013: Paste image mixed with other DataTransferItem
* Defect redmine-36887: copyImageFromClipboard function failed to generate a unique file name
* Defect redmine-36932: Handle nil return of Redmine::Themes.theme(Setting.ui_theme) in Redmine::Info.environment
* Defect redmine-37053: Attachments are lost when the status of the ticket is changed
* Feature redmine-35462: Download all attachments in a journal
* Patch redmine-36817: copyImageFromClipboard function targets the first file input of the page and may conflict with other plugins

### Code cleanup/refactoring

* Defect redmine-36149: Typo in CSS class for lists expander icon
* Defect redmine-36361: IssueRelationsControllerTest#test_bulk_create_should_show_errors randomly fails
* Defect redmine-36394: Avoid passing ActionController::Parameters outside of MailHandlerController
* Patch redmine-15118: Deprecate and rename rss_* methods to atom_* methods
* Patch redmine-35952: Explicitly specify text formatting in the test suite
* Patch redmine-35975: Add missing fixtures to UserTest
* Patch redmine-36005: Adopt 2FA emails to new Mailer interface
* Patch redmine-36241: MenuManagerTest randomly fails
* Patch redmine-36347: Add missing fixture to IssuesHelperTest
* Patch redmine-36358: Use File.exist? instead of deprecated File.exists?
* Patch redmine-36378: Update copyright year in the footer to 2022
* Patch redmine-36379: Update copyright year in source files to 2022
* Patch redmine-36716: IssuesControllerTest randomly fails
* Patch redmine-36730: Replace Member.find_or_new with ActiveRecord's find_or_initialize_by
* Patch redmine-36770: Fix to use a correct exception class ActiveRecord::IrreversibleMigration in migrations

### Custom fields

* Feature redmine-14275: Add hinting to custom fields

### Database

* Defect redmine-36766: Database migration from Redmine 0.8.7 or earlier fails
* Patch redmine-36416: Cleanup more dependent objects on project delete

### Documentation

* Feature redmine-33859: Add a list of supported languages by the code highlighter to the help
* Feature redmine-34978: Add the list of supported browsers to docs and drop support for IE 11

### Documents

* Defect redmine-36686: Allow pasting screenshots from clipboard in documents
* Patch redmine-17924: Structured Document list for more flexible UI design with CSS

### Gantt

* Defect redmine-35027: Gantt PNG export ignores imagemagick_convert_command

### Gems support

* Defect redmine-35892: Redmine::WikiFormatting::CommonMark::FormatterTest#test_footnotes fails with CommonMarker 0.23.2
* Defect redmine-36226:  Psych 4: Psych::DisallowedClass exception when unserializing a setting value
* Defect redmine-36892: Redmine does not start when installed --without markdown
* Patch redmine-35025: Update capybara to 3.36
* Patch redmine-35136: Update RuboCop to 1.25
* Patch redmine-35142: Update RuboCop Performance to 1.13
* Patch redmine-35207: Update RuboCop Rails to 2.14
* Patch redmine-35691: Update Nokogiri to 1.13
* Patch redmine-36325: Update Rouge to 3.28
* Patch redmine-36355: Update roadie-rails to 3.0
* Patch redmine-36564: Update I18n to 1.10
* Patch redmine-36795: Set the minimum required version of ROTP gem to 5.0.0
* Patch redmine-36919: Update RuboCop to 1.28

### Email notifications

* Defect redmine-36393: Mailer.with_synched_deliveries doesn't correctly detect other async Queue adapters
* Defect redmine-36909: Mentions not working if status is changed
* Defect redmine-37162: Missing space between notification sentence and author name when edit a wiki page
* Feature redmine-13919: Mention user on issues and wiki pages using @user with autocomplete

### Filters

* Defect redmine-36389: Filter parameters of Query string do not work when default query is enabled

### I18n

* Defect redmine-36396: Custom I18n Pluralization rules are not applied correctly
* Defect redmine-36461: I18nTest#test_custom_pluralization_rules randomly fails

### Importers

* Defect redmine-35656: When importing issue relations, the validation messages are not shown in the UI
* Defect redmine-36377: Encoding drop-down in the import settings defaults to US-ASCII instead of general_csv_encoding in Korean, Thai, and Shimplified Chinese
* Feature redmine-34718: Auto guess file encoding when importing CSV file
* Patch redmine-36823: Allow to import time entries for issues in different projects

### Issues

* Defect redmine-34641: When editing an issue, the Log time and/or Add notes does not show or hide dynamically
* Defect redmine-36455: Text custom field values are not aligned with their labels when text formatting is enabled
* Feature redmine-4347: Contributing to an issue should automatically add the user to the watchers list
* Feature redmine-6033: Allow addition/removal of subtasks to show in parent's history
* Feature redmine-7360: Issue custom query: default query per instance, project and user
* Feature redmine-13099: Issue Summary: add statistics about issues without assignee, version or category
* Feature redmine-29076: Add button to "Create and follow" when adding a subtask from the parent issue
* Feature redmine-31278: Change Delete button name to Delete issue
* Patch redmine-37155: Issue#last_notes fallback does not respect notes visibility

### Issues filter

* Defect redmine-30924: Filter on Target version's Status in subproject doesn't work on version from top project
* Patch redmine-36824: Allow to filter issues by its version status with shared versions

### OpenID

* Feature redmine-35755: Drop OpenID support

### Performance

* Feature redmine-29041: Update session token only once per minute
* Feature redmine-36294: Lazy load inline images
* Feature redmine-36505: Reduce database queries when rendering Custom fields box in the project settings tab
* Feature redmine-36696: Improve performance of adding or removing members of a group
* Patch redmine-36503: Reduce extra queries in IssueQuery.default
* Patch redmine-37057: Query optimization for attachments activity
* Patch redmine-37135: Reduce extra queries in ProjectQuery.default

### Permissions and roles

* Defect redmine-34029: 403 Forbidden error when non-member try to upload a file

### Projects

* Defect redmine-36593: User without permissions to view required project custom fields cannot create new projects
* Feature redmine-35795: Settings for global and user default custom ProjectQuery

### Project settings

* Defect redmine-13199: "Edit" misaligned in project members view
* Defect redmine-36318: Saving time tracking activities without any change may turn a system activity into a project activity

## Rails support

* Feature redmine-32938: Rails 6: Zeitwerk support
* Patch redmine-35081: Update config/environments/*.rb for Rails 6.1
* Patch redmine-36317: Set default protect from forgery true
* Patch redmine-36917: Update Rails to 6.1.6

### REST API

* Feature redmine-10171: Updating journal notes via REST API
* Feature redmine-34766: Better error message when no API format is recognised
* Feature redmine-36303: Include avatar URL in Users API

### Ruby support

* Feature redmine-36205: Ruby 3.1 support
* Patch redmine-37159: Drop Ruby 2.5 support

### Security

* Patch redmine-36912: Update Nokogiri versions to fix two critical CVE's

### SCM

* Feature redmine-5242: Display source project for cross-project associated revisions for issues
### Text formatting

* Defect redmine-36580: Fix code copying in common browsers
* Defect redmine-36958: Crafted input breaks CommonMark Markdown formatter
* Feature redmine-20511: Comments for Textile text formatting
* Feature redmine-35742: Enable task list items for CommonMark text formatting
* Feature redmine-36699: Change the text of the user link when converting @user notation to html
* Patch redmine-36807: Remove CommonMark experimental flag and mark as deprecated the RedCarpet Markdown

### Third-party libraries

* Feature redmine-36701: Update Chart.js to 3.7.1

### Time tracking

* Defect redmine-20018: Duplicate activities in time entry report when project-specific activies exist
* Defect redmine-36248: Time entries of sub-projects are not listed when activity is specified in filters

### Translations

* Defect redmine-36517: Label error_can_not_execute_macro_html in Russian translation is broken
* Feature redmine-36938: Update translations of field_principal to User or Group
* Patch redmine-32405: Updating sq translation
* Patch redmine-33361: Polish translation update

### UI

* Defect redmine-35090: Permission check of the setting button on the issues page mismatches button semantics
* Defect redmine-36363: Cannot select text in a table with a context menu available
* Defect redmine-36446: Watchers autocomplete fails with 403 error when the search is made from multiple objects with different projects
* Defect redmine-36524: Query Links on Issues and Time Logs Import Sidebars broken
* Patch redmine-35215: Don't display "No Match Found!" when the inline autocomplete doesn't return any result
* Patch redmine-36429: Make issue tabs DOM more consistent

### Wiki

* Defect redmine-36494: WikiContentVersion API returns 500 if author is nil
* Defect redmine-36561: Wiki revision page does not return 404 if revision does not exist

## RedMica 2.0.0 - 2021-11-05

### Accounts / authentication

* Feature redmine-31920: Require 2FA only for certain user groups

### Administration

* Defect redmine-35421: Unhandled exception when a YAML syntax error is detected in configuration.yml
* Feature redmine-35562: Show warning in admin/info when there are pending migrations

### Code cleanup/refactoring

* Defect redmine-31132: Remove unused column trackers.is_in_chlog
* Feature redmine-35259: Output test coverage report to the console
* Feature redmine-35671: Move subtasks section on issues show view into a separate partial
* Patch redmine-31035: Remove redefinition of ActionMailer::LogSubscriber#deliver which is no longer necessary because of the removal of Setting.bcc_recipients
* Patch redmine-33079: Remove unused argument from Redmine::Helpers::TimeReport
* Patch redmine-35396: Use base_scope for issue query results
* Patch redmine-35466: Rename `test/fixtures/configuration/*.yml.example` to `test/fixtures/files/configuration/*.yml`
* Patch redmine-35610: Cleanups after Wiki tab removal from project settings (#26579)
* Patch redmine-35727: Add missing fixtures to Redmine::ProjectJumpBoxTest
* Patch redmine-35773: Move sidebar content on versions index view (roadmap) into a  separate partial

### Custom fields

* Patch redmine-32977: Remove references to deleted user from "user"-Format CustomFields

### Database

* Patch redmine-35073: Escape values in LIKE statements to prevent injection of placeholders (_ or %)

### Email notifications

* Patch redmine-30820: Drop setting "Blind carbon copy recipients (bcc)"

### Filters

* Feature redmine-34715: Filter issues by file description
* Feature redmine-35764: Multiple search terms in the "contains" operator of text filters

### Gantt

* Defect redmine-33381: Possible double includes in issue query in gantt helper

### Gems support

* Patch redmine-35136: Update RuboCop to 1.17
* Patch redmine-35207: Update RuboCop Rails to 2.11
* Patch redmine-35361: Update CSV to 3.2
* Patch redmine-35691: Update Nokogiri to 1.12

### Groups

* Feature redmine-12795: View group members by non-admin users

### Hook requests

* Defect redmine-34743: Hooks for queries helper

### Importers

* Feature redmine-35137: Reject CSV file without data row when importing
* Feature redmine-35365: Allow sending account information when importing users

### Issues

* Defect redmine-15634: Add watching users to a ticket should switch "watch" link to "unwatch" if own user was added
* Defect redmine-33521: Use issue path instead of bulk update issues path when using the context menu with only one issue selected
* Defect redmine-35134: Change total spent time link to global time entries when issue has subtasks that can be on non descendent projects
* Feature redmine-35559: Query links for related issues on issue page
* Feature redmine-7360: Issue Custom Query: Default Query

### Third-party libraries

* Patch redmine-35729: Update jQuery to 3.6.0

### Time tracking

* Defect redmine-21056: Project specific TimeEntryActivity name not updating properly

### UI

* Patch redmine-30448: Remove wrapper2 and wrapper3 wrapping containers

### Performance

* Patch redmine-35324: Preload principal and roles in members#index
* Patch redmine-35374: Reduce amount of work on projects show API

### PDF export

* Patch redmine-35683: PDF rendering improvements when exporting an issue or a list of issues

### Plugin API

* Defect redmine-35455: Require redmine/sort_criteria globally

### Projects

* Defect redmine-21210: Issues and Spent Time of closed subprojects are included on the overview page, but are not included on the issues, gantt or spent time details/report pages

### REST API

* Feature redmine-15855: Add information about whether an issue is open or closed to Issues API response
* Feature redmine-34857: Add total estimated hours, spent hours, total spent hours for issues to issue list API
* Feature redmine-35420: API to archive/unarchive projects
* Feature redmine-35505: Add enabled core fields to /trackers API response
* Feature redmine-35507: API to close/reopen projects

### Rails support

* Feature redmine-29914: Migrate to Rails 6.1

### Roadmap

* Feature redmine-35758: Add some space around the versions on the Roadmap
* Feature redmine-6432: Allow Roadmap view without any related issues

### Text formatting

* Feature redmine-32424: CommonMark Markdown Text Formatting
* Patch redmine-35104: Code blocks - consistent rendering and retaining user-supplied language name in rendered HTML

### Translations

* Patch redmine-35110: Lithuanian translation update for 4.2-stable
* Patch redmine-35766: Galician translation update for 4.2-stable

### UI

* Feature redmine-34494: Rename the save, edit and delete buttons on the query form to clarify the scope
* Patch redmine-35770: Change "Edit" label in the context menu to "Bulk Edit" when multiple issues are selected

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
