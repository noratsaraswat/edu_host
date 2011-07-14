class ChangeCol < ActiveRecord::Migration
  def self.up
    remove_column :developers, :userID
    add_column :developers, :userid, :integer
  end

  def self.down
  end
end
