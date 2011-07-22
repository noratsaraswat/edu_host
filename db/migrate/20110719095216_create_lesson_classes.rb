class CreateLessonClasses < ActiveRecord::Migration
  def self.up
    create_table :lesson_classes do |t|
      t.integer :lesson_id
      t.integer :class_id
      t.timestamps
    end
  end

  def self.down
    drop_table :lesson_classes
  end
end
