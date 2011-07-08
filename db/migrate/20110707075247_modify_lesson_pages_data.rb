class ModifyLessonPagesData < ActiveRecord::Migration
  def self.up
    
    change_column(:lesson_pages, :datasource, :integer)
    rename_column(:lesson_pages, :datasource, :dataID)
  end

  def self.down
    change_column(:lesson_pages, :dataID, :string)
    rename_column(:lesson_pages, :dataID, :datasource )
  end
end
