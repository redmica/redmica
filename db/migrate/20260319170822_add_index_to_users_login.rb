class AddIndexToUsersLogin < ActiveRecord::Migration[8.1]
  def up
    add_index :users, :login
  end

  def down
    remove_index :users, :login
  end
end
