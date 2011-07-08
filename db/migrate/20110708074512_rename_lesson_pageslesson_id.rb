class RenameLessonPageslessonId < ActiveRecord::Migration
  def self.up
    rename_column(:lesson_pages, :lessonID, :lesson_id)
  end

  def self.down
  end
end
