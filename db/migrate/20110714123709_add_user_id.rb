class AddUserId < ActiveRecord::Migration
  def self.up
    add_column :developers, :userID, :integer
  end

  def self.down
  end
end
