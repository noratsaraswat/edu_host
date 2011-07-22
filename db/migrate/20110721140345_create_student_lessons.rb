class CreateStudentLessons < ActiveRecord::Migration
  def self.up
    create_table :student_lessons do |t|
      t.integer :lesson_id
      t.integer :student_id #changed to user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :student_lessons
  end
end
