class AddIndexToUsersLowerLoginOnPostgresAndSqlite < ActiveRecord::Migration[8.1]
  def up
    if Redmine::Database.postgresql? || Redmine::Database.sqlite?
      add_index :users, "(lower(login))", name: "index_users_on_lower_login"
    end
  end

  def down
    if index_exists?(:users, name: "index_users_on_lower_login")
      remove_index :users, name: "index_users_on_lower_login"
    end
  end
end
