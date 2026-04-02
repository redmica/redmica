class AddIndexToUsersLogin < ActiveRecord::Migration[8.1]
  def up
    add_index :users, :login, if_not_exists: true
  end

  def down
    remove_index :users, :login, if_exists: true
  end
end
