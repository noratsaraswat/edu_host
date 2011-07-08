class RemoveDatatypecolumn < ActiveRecord::Migration
  def self.up
    remove_column :lesson_pages, :datatype
  end

  def self.down
  end
end
