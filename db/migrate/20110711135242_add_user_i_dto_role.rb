class AddUserIDtoRole < ActiveRecord::Migration
  def self.up
     add_column :roles, :userID, :integer
  end

  def self.down
  end
end
