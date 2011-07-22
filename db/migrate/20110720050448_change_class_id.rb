class ChangeClassId < ActiveRecord::Migration
  def self.up
    remove_column :lesson_classes, :class_id
    add_column :lesson_classes, :class_detail_id, :integer
  end

  def self.down
  end
end
