class AddIndexToUsersLowerLoginOnPostgresAndSqlite < ActiveRecord::Migration[8.1]
  def up
    if Redmine::Database.postgresql? || Redmine::Database.sqlite?
      add_index :users, "(lower(login))", name: "index_users_on_lower_login", if_not_exists: true
    end
  end

  def down
    remove_index :users, name: "index_users_on_lower_login", if_exists: true
  end
end
