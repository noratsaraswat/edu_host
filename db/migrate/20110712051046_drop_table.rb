class DropTable < ActiveRecord::Migration
  def self.up
    drop_table :roles_users
  end

  def self.down
  end
end
