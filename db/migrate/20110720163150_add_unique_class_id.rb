class AddUniqueClassId < ActiveRecord::Migration
  def self.up
    add_column :lesson_classes, :unique_classid, :string
  end

  def self.down
  end
end
