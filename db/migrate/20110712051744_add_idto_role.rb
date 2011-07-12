class AddIdtoRole < ActiveRecord::Migration
  def self.up
    add_column :roles,:user_id, :integer
    remove_column :roles, :userID
  end

  def self.down
  end
end
