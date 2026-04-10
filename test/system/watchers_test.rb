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

class WatchersSystemTest < ApplicationSystemTestCase
  fixtures :projects, :users, :email_addresses, :roles, :members, :member_roles,
           :trackers, :projects_trackers, :enabled_modules, :issues, :issue_statuses,
           :watchers

  def test_add_watcher_after_search_preserves_selection
    issue = Issue.find(1)
    jsmith = User.find_by_login('jsmith')
    dlopper = User.find_by_login('dlopper')

    # Clear existing watchers
    issue.watcher_users = []

    assert_not issue.watched_by?(jsmith)
    assert_not issue.watched_by?(dlopper)

    log_user('admin', 'admin')
    visit "/issues/#{issue.id}"

    # Open watcher modal
    within '#sidebar' do
      click_on 'Add'
    end

    within '#ajax-modal' do
      # Check John Smith
      find('label', text: 'John Smith').click

      # Search for 'Dave Lopper' - only Dave Lopper should remain
      fill_in 'user_search', with: 'Dave Lopper'
      assert page.has_no_css?('label', text: 'John Smith')

      # Check Dave Lopper while John Smith is hidden
      find('label', text: 'Dave Lopper').click

      # Clear search - both should be visible and John Smith should still be checked
      fill_in 'user_search', with: ''
      assert page.has_css?('label', text: 'John Smith')
      assert page.has_css?('label', text: 'Dave Lopper')

      # Submit
      click_on 'Add'
    end

    # Wait for AJAX to complete and sidebar to update
    assert page.has_css?('#sidebar', text: 'John Smith', wait: 5)

    # Verify both users were added as watchers
    issue.reload
    assert issue.watched_by?(jsmith),
      "Expected John Smith to be added as watcher"
    assert issue.watched_by?(dlopper),
      "Expected Dave Lopper to be added as watcher"
  end
end
