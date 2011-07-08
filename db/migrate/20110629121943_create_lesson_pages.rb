class CreateLessonPages < ActiveRecord::Migration
  def self.up
    create_table :lesson_pages do |t|
      t.integer :lessonID # changed to lesson_id
      t.integer :orderNo # removed
      t.string :datasource # changed to dataID integer and removed.
      t.boolean :datatype

      t.timestamps
    end
  end

  def self.down
    drop_table :lesson_pages
  end
end
