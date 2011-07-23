class ReName < ActiveRecord::Migration
  def self.up
    remove_column :student_lessons, :current
    add_column :student_lessons, :finished, :integer

  end

  def self.down
  end
end
