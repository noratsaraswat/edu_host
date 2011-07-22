class AddForeignKeys < ActiveRecord::Migration
  def self.up
    remove_column :teacher_lessons, :userid
    remove_column :teacher_lessons, :lessonid
    add_column :teacher_lessons, :user_id, :integer
    add_column :teacher_lessons, :lesson_id, :integer
  end

  def self.down
  end
end
