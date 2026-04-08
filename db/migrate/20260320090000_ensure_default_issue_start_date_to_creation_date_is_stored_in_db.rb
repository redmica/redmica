class EnsureDefaultIssueStartDateToCreationDateIsStoredInDb < ActiveRecord::Migration[8.1]
  def up
    # Preserve the previous default value for existing installations.
    Setting.find_or_create_by!(name: 'default_issue_start_date_to_creation_date') do |setting|
      setting.value = '1'
    end
  end

  def down
    # no-op
  end
end
