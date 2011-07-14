class ChangeCol < ActiveRecord::Migration
  def self.up
     add_column :developers, :userid, :integer
  end

  def self.down
  end
end
