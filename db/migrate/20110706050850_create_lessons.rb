class CreateLessons < ActiveRecord::Migration
  def self.up
    create_table :lessons do |t|
      t.integer :lessonID
      t.string :lessonName

      t.timestamps
    end
  end

  def self.down
    drop_table :lessons
  end
end
