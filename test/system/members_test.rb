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

class MembersSystemTest < ApplicationSystemTestCase
  fixtures :projects, :users, :email_addresses, :roles, :members, :member_roles,
           :trackers, :projects_trackers, :enabled_modules

  def test_add_member_after_search_preserves_selection
    project = Project.find('ecookbook')
    rhill = User.find_by_login('rhill')
    admin_user = User.find_by_login('admin')

    assert_not project.members.map(&:user).include?(rhill)
    assert_not project.members.map(&:user).include?(admin_user)

    log_user('admin', 'admin')
    visit '/projects/ecookbook/settings/members'

    click_on 'New member'

    within '#ajax-modal' do
      # Check Robert Hill
      find('label', text: 'Robert Hill').click

      # Search for 'Redmine Admin' - only Redmine Admin should remain
      fill_in 'principal_search', with: 'Redmine Admin'
      assert page.has_no_css?('label', text: 'Robert Hill')

      # Check Redmine Admin while Robert Hill is hidden
      find('label', text: 'Redmine Admin').click

      # Clear search - both should be visible and Robert Hill should still be checked
      fill_in 'principal_search', with: ''
      assert page.has_css?('label', text: 'Robert Hill')
      assert page.has_css?('label', text: 'Redmine Admin')

      # Select a role
      check 'Manager'

      # Submit
      click_on 'Add'
    end

    # Wait for modal to close and page to update
    assert page.has_no_css?('#ajax-modal')

    # Verify both users were added as members
    project.reload
    assert project.members.map(&:user).include?(rhill),
      "Expected Robert Hill to be added as member"
    assert project.members.map(&:user).include?(admin_user),
      "Expected Redmine Admin to be added as member"

    # Verify on the page
    assert page.has_css?('#tab-content-members', text: 'Robert Hill')
    assert page.has_css?('#tab-content-members', text: 'Redmine Admin')
  end
end
