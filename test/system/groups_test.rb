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

class GroupsSystemTest < ApplicationSystemTestCase
  fixtures :users, :email_addresses, :groups_users

  def test_add_user_to_group_after_search_preserves_selection
    group = Group.find(10)  # A Team
    rhill = User.find_by_login('rhill')
    someone = User.find_by_login('someone')

    assert_not group.users.include?(rhill)
    assert_not group.users.include?(someone)

    log_user('admin', 'admin')
    visit "/groups/#{group.id}/edit?tab=users"

    click_on 'New user'

    within '#ajax-modal' do
      # Check Robert Hill
      find('label', text: 'Robert Hill').click

      # Search for 'Some One' - only Some One should remain
      fill_in 'user_search', with: 'Some One'
      assert page.has_no_css?('label', text: 'Robert Hill')

      # Check Some One while Robert Hill is hidden
      find('label', text: 'Some One').click

      # Clear search - both should be visible and Robert Hill should still be checked
      fill_in 'user_search', with: ''
      assert page.has_css?('label', text: 'Robert Hill')
      assert page.has_css?('label', text: 'Some One')

      # Submit
      click_on 'Add'
    end

    # Wait for modal to close
    assert page.has_no_css?('#ajax-modal')

    # Verify both users were added to the group
    group.reload
    assert group.users.include?(rhill),
      "Expected Robert Hill to be added to group"
    assert group.users.include?(someone),
      "Expected Some One to be added to group"
  end

  def test_add_user_to_group_submitting_while_filtered
    group = Group.find(10)  # A Team
    rhill = User.find_by_login('rhill')
    someone = User.find_by_login('someone')

    assert_not group.users.include?(rhill)
    assert_not group.users.include?(someone)

    log_user('admin', 'admin')
    visit "/groups/#{group.id}/edit?tab=users"

    click_on 'New user'

    within '#ajax-modal' do
      # Check Robert Hill
      find('label', text: 'Robert Hill').click

      # Search for 'Some One' - Robert Hill disappears
      fill_in 'user_search', with: 'Some One'
      assert page.has_no_css?('label', text: 'Robert Hill')

      # Check Some One
      find('label', text: 'Some One').click

      # Verify hidden input exists for Robert Hill before submitting
      rhill_id = rhill.id.to_s
      hidden_values = page.evaluate_script(
        "$('form input.hidden-checked-value').map(function(){return $(this).val()}).get()"
      )
      assert_includes hidden_values, rhill_id,
        "Expected hidden input for Robert Hill (id=#{rhill_id}) but got: #{hidden_values.inspect}"

      # Submit without clearing search
      click_on 'Add'
    end

    assert page.has_no_css?('#ajax-modal')

    # Both users should be added even though Robert Hill was not visible
    group.reload
    assert group.users.include?(rhill),
      "Expected Robert Hill to be added to group"
    assert group.users.include?(someone),
      "Expected Some One to be added to group"
  end

  def test_unchecked_user_should_not_be_rechecked_after_search
    group = Group.find(10)  # A Team
    rhill = User.find_by_login('rhill')

    assert_not group.users.include?(rhill)

    log_user('admin', 'admin')
    visit "/groups/#{group.id}/edit?tab=users"

    click_on 'New user'

    within '#ajax-modal' do
      # Step 2: Check Robert Hill
      find('label', text: 'Robert Hill').click

      # Step 3: Search that hides Robert Hill
      fill_in 'user_search', with: 'Some One'
      assert page.has_no_css?('label', text: 'Robert Hill')

      # Step 4: Clear search - Robert Hill reappears and should be checked
      fill_in 'user_search', with: ''
      assert page.has_css?('label', text: 'Robert Hill')
      rhill_cb = find('label', text: 'Robert Hill').find('input[type=checkbox]', visible: :all)
      assert rhill_cb.checked?, "Robert Hill should be checked after clearing search"

      # Step 5: Uncheck Robert Hill
      find('label', text: 'Robert Hill').click
      rhill_cb = find('label', text: 'Robert Hill').find('input[type=checkbox]', visible: :all)
      assert_not rhill_cb.checked?, "Robert Hill should be unchecked after clicking again"

      # Step 6: Search that matches Robert Hill
      fill_in 'user_search', with: 'Robert Hill'
      assert page.has_css?('label', text: 'Robert Hill')

      # Step 7: Robert Hill should still be unchecked
      rhill_cb = find('label', text: 'Robert Hill').find('input[type=checkbox]', visible: :all)
      assert_not rhill_cb.checked?,
        "Robert Hill should NOT be re-checked after search refresh"

      # Also verify no hidden input exists for Robert Hill
      rhill_id = rhill.id.to_s
      hidden_values = page.evaluate_script(
        "$('form input.hidden-checked-value').map(function(){return $(this).val()}).get()"
      )
      assert_not_includes hidden_values, rhill_id,
        "No hidden input should exist for unchecked Robert Hill"
    end
  end
end
