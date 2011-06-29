class CreateStudentDetails < ActiveRecord::Migration
  def self.up
    create_table :student_details do |t|
      t.string :name
      t.string :classname
      t.string :standard

      t.timestamps
    end
  end

  def self.down
    drop_table :student_details
  end
end
