# frozen_string_literal: true

# Redmine - project management software
# Copyright (C) 2006-  Jean-Philippe Lang
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
require_relative '../application_system_test_case'
class StickyIssueHeaderSystemTest < ApplicationSystemTestCase
  test "sticky issue header is hidden by default" do
    issue = Issue.find(1)
    visit issue_path(issue)

    assert_no_selector "#sticky-issue-header", text: issue.subject
  end

  test "sticky issue header appears on scroll" do
    issue = Issue.find(2)
    visit issue_path(issue)

    page.execute_script("window.scrollTo(0, 1000)")
    assert_selector "#sticky-issue-header.is-visible", text: issue.subject

    page.execute_script("window.scrollTo(0, 0)")
    assert_no_selector "#sticky-issue-header", text: issue.subject
  end

  test "edit heading is not hidden behind sticky header when edit link is clicked" do
    log_user('jsmith', 'jsmith')
    issue = Issue.find(1)
    visit issue_path(issue)

    click_link 'Edit', match: :first

    sleep 0.5 # Wait for scrolling to complete
    assert_selector "#sticky-issue-header.is-visible", visible: true
    assert_selector 'h3', text: 'Edit', visible: true

    # More strictly check whether the Edit heading is visually accessible using JavaScript
    is_edit_heading_visible_to_user = page.evaluate_script(<<~JS)
      (function() {
        const stickyIssueHeader = document.querySelector('#sticky-issue-header');
        const editHeading = document.querySelector("#update > h3");
        return stickyIssueHeader.getBoundingClientRect().bottom < editHeading.getBoundingClientRect().top;
      })();
    JS
    assert is_edit_heading_visible_to_user, "Edit heading is visually covered by the sticky header"
  end
end
