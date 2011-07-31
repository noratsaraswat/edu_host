class StudentDetails < ActiveRecord::Migration
  def self.up

    add_column :student_details, :user_id, :integer
    add_column :student_details, :class_details_id, :integer
    remove_column :student_details, :name
    remove_column :student_details, :classname
    remove_column :student_details, :standard
  end

  def self.down
  end
end
