class LessonPagesModification < ActiveRecord::Migration
  def self.up
    remove_column :lesson_pages, :lessonID
    remove_column :lesson_pages, :datasource
    remove_column :lesson_pages, :datatype
    add_column :lesson_pages, :lesson_id, :integer
    add_column :lesson_pages, :content_info_id, :integer
    add_column :lesson_pages, :questionnaire_id, :integer
  end

  def self.down
  end
end
