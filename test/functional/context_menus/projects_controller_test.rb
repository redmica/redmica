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
  class ProjectsControllerTest < Redmine::ControllerTest
    def test_index_admin_user
      @request.session[:user_id] = 1

      get(
        :index,
        :params => {
          :ids => [1, 2]
        }
      )

      assert_response :success
    end

    def test_index_not_admin_user
      @request.session[:user_id] = 2

      get(
        :index,
        :params => {
          :ids => [1, 2]
        }
      )

      assert_response :forbidden
    end

    def test_index_should_not_leak_identifier_to_non_admin
      # Project 5 is private; user 4 is not a member, so Project.visible would
      # exclude it. Without authorization the action would render and the
      # project's identifier ("private-child") would surface in link hrefs.
      private_project = Project.find(5)
      assert_equal false, private_project.is_public
      assert_not User.find(4).member_of?(private_project)

      @request.session[:user_id] = 4
      get(:index, :params => {:ids => [5]})

      assert_response :forbidden
      assert_not_includes @response.body, private_project.identifier
    end

    def test_index_should_not_expose_existence_oracle
      # Existing private id and missing id must both return 403 — same
      # status, no enumeration oracle.
      @request.session[:user_id] = 4

      get(:index, :params => {:ids => [5]})
      assert_response :forbidden

      get(:index, :params => {:ids => [999_999]})
      assert_response :forbidden
    end

    def test_index_should_not_leak_archived_state
      # The response must not distinguish active ("Archive" button) from
      # archived ("Unarchive" button) projects the user cannot see.
      Project.find(5).archive

      @request.session[:user_id] = 4
      get(:index, :params => {:ids => [5]})

      assert_response :forbidden
      assert_select 'a.icon-unlock', :text => /Unarchive/i, :count => 0
      assert_select 'a.icon-lock',   :text => /Archive/i,   :count => 0
    end
  end
end
