class StudentDetailschange < ActiveRecord::Migration
  def self.up
    add_column :student_details, :class_detail_id, :integer
    remove_column :student_details,:class_details_id
  end

  def self.down
  end
end
