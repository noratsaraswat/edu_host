class ModifyLessonPagesData < ActiveRecord::Migration
  def self.up
    
    change_column(:lesson_pages, :datasource, :integer)
    rename_column(:lesson_pages, :datasource, :dataID)
  end

  def self.down
  end
end
