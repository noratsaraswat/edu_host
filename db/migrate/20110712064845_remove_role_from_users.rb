class RemoveRoleFromUsers < ActiveRecord::Migration
  def self.up
    remove_column :users, :role
  end

  def self.down
  end
end
