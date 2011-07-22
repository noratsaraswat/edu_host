class ChangeStudentLessons < ActiveRecord::Migration
  def self.up
    add_column :student_lessons, :user_id, :integer
    remove_column :student_lessons, :student_id
  end

  def self.down
  end
end
