class RemoveLessonIdColumn < ActiveRecord::Migration
  def self.up
    remove_column :lessons, :lessonID
  end

  def self.down
    add_column :lessons, :lessonID
  end
end
