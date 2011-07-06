class RemoveOrderNo < ActiveRecord::Migration
  def self.up
    remove_column :lesson_pages, :orderNo
  end

  def self.down
    add_column :lesson_pages, :orderNo
  end
end
