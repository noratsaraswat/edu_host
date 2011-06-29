class CreateLessonPages < ActiveRecord::Migration
  def self.up
    create_table :lesson_pages do |t|
      t.integer :lessonID
      t.integer :orderNo
      t.string :datasource
      t.boolean :datatype

      t.timestamps
    end
  end

  def self.down
    drop_table :lesson_pages
  end
end
