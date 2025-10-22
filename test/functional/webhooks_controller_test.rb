# frozen_string_literal: true

require 'test_helper'

class WebhooksControllerTest < Redmine::ControllerTest
  fixtures :projects, :users, :email_addresses, :user_preferences, :members, :member_roles, :roles,
           :groups_users,
           :trackers, :projects_trackers,
           :enabled_modules,
           :versions,
           :issue_statuses, :issue_categories, :issue_relations, :workflows,
           :enumerations,
           :issues, :journals, :journal_details

  setup do
    @project = Project.find 'ecookbook'
    @dlopper = User.find_by_login 'dlopper'
    @issue = @project.issues.first
    @hook = create_hook
    @other_hook = create_hook user: User.find_by_login('admin'), url: 'https://example.com/other/hook'
    @request.session[:user_id] = @dlopper.id
  end

  test "should require login" do
    @request.session[:user_id] = nil
    get :index
    assert_redirected_to '/login?back_url=http%3A%2F%2Ftest.host%2Fwebhooks'
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_select 'td', text: @hook.url
    assert_select 'td', text: @other_hook.url, count: 0
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create webhook" do
    assert_difference 'Webhook.count' do
      post :create, params: { webhook: { url: 'https://example.com/new/hook', events: %w(issue.created), project_ids: [@project.id] } }
    end
    assert_redirected_to webhooks_path
  end

  test "should get edit" do
    get :edit, params: { id: @hook.id }
    assert_response :success
  end

  test "should update webhook" do
    patch :update, params: { id: @hook.id, webhook: { url: 'https://example.com/updated/hook' } }
    assert_redirected_to webhooks_path
    assert_equal 'https://example.com/updated/hook', @hook.reload.url
  end

  test 'edit should not find hook of other user' do
    get :edit, params: { id: @other_hook.id }
    assert_response :not_found
  end

  private

  def create_hook(url: 'https://example.com/some/hook',
                  user: User.find_by_login('dlopper'),
                  events: %w(issue.created issue.updated),
                  projects: [Project.find('ecookbook')])
    Webhook.create!(url: url, user: user, events: events, projects: projects)
  end
end
