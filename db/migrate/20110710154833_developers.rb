class Developers < ActiveRecord::Migration
  def self.up
    drop_table :developers
  end

  def self.down
  end
end
