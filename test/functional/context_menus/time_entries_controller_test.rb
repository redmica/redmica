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

require_relative '../../test_helper'

module ContextMenus
  class TimeEntriesControllerTest < Redmine::ControllerTest
    def test_context_menu_for_one_time_entry
      @request.session[:user_id] = 2
      get(
        :index,
        :params => {
          :ids => [1]
        }
      )
      assert_response :success

      assert_select 'a:not(.disabled)', :text => 'Edit'
    end

    def test_time_entries_context_menu
      @request.session[:user_id] = 2
      get(
        :index,
        :params => {
          :ids => [1, 2]
        }
      )
      assert_response :success

      assert_select 'a:not(.disabled)', :text => 'Bulk edit'
    end

    def test_time_entries_context_menu_should_include_custom_fields
      field = TimeEntryCustomField.generate!(:name => "Field", :field_format => "list", :possible_values => ["foo", "bar"])

      @request.session[:user_id] = 2
      get(
        :index,
        :params => {
          :ids => [1, 2]
        }
      )
      assert_response :success

      assert_select "li.cf_#{field.id}" do
        assert_select 'a[href="#"]', :text => "Field"
        assert_select 'ul' do
          assert_select 'a', 3
          assert_select 'a[href=?]', "/time_entries/bulk_update?ids%5B%5D=1&ids%5B%5D=2&time_entry%5Bcustom_field_values%5D%5B#{field.id}%5D=foo", :text => 'foo'
          assert_select 'a[href=?]', "/time_entries/bulk_update?ids%5B%5D=1&ids%5B%5D=2&time_entry%5Bcustom_field_values%5D%5B#{field.id}%5D=bar", :text => 'bar'
          assert_select 'a[href=?]', "/time_entries/bulk_update?ids%5B%5D=1&ids%5B%5D=2&time_entry%5Bcustom_field_values%5D%5B#{field.id}%5D=__none__", :text => 'none'
        end
      end
    end

    def test_time_entries_context_menu_with_time_entry_that_is_not_visible_should_fail
      project = Project.find(2)
      project.enable_module!(:time_tracking)
      time_entry = TimeEntry.generate!(project: project)

      @request.session[:user_id] = 2

      get(
        :index,
        :params => {
          :ids => [1, 5, time_entry.id]
        }
      )

      assert_response :not_found
    end

    def test_time_entries_context_menu_with_edit_own_time_entries_permission
      @request.session[:user_id] = 2
      Role.find_by_name('Manager').remove_permission! :edit_time_entries
      Role.find_by_name('Manager').add_permission! :edit_own_time_entries
      ids = (0..1).map {TimeEntry.generate!(:user => User.find(2)).id}
      get(
        :index,
        :params => {
          :ids => ids
        }
      )
      assert_response :success

      assert_select 'a:not(.disabled)', :text => 'Bulk edit'
    end

    def test_time_entries_context_menu_without_edit_permission
      @request.session[:user_id] = 2
      Role.find_by_name('Manager').remove_permission! :edit_time_entries
      get(
        :index,
        :params => {
          :ids => [1, 2]
        }
      )
      assert_response :success

      assert_select 'a.disabled', :text => 'Bulk edit'
    end

    def test_index_should_not_leak_activity_names_from_invisible_project
      # time_entry 5 belongs to project 5 (private). User 4 is not a member;
      # the menu must not render and no activity names from the private
      # project may leak via the response body.
      entry = TimeEntry.find(5)
      assert_equal 5, entry.project_id
      assert_not entry.visible?(User.find(4))

      @request.session[:user_id] = 4
      get(:index, :params => {:ids => [5]})

      assert_response :not_found

      Project.find(5).activities.each do |activity|
        assert_not_includes @response.body, activity.name
      end
    end
  end
end
