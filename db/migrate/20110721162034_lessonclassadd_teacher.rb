class LessonclassaddTeacher < ActiveRecord::Migration
  def self.up
    add_column :lesson_classes, :teacherid, :integer
  end

  def self.down
  end
end
