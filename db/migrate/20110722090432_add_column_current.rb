class AddColumnCurrent < ActiveRecord::Migration
  def self.up
    add_column :student_lessons, :current, :integer
  end

  def self.down
  end
end
