class DropTableUsersAndComments < ActiveRecord::Migration
  def change
    drop_table :users_and_comments
  end
end
