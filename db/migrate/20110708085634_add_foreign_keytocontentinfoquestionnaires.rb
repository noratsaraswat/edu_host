class AddForeignKeytocontentinfoquestionnaires < ActiveRecord::Migration
  def self.up
    add_column :content_infos, :lesson_page_id, :integer
    add_column :questionnaires, :lesson_page_id, :integer
  end

  def self.down
    remove_column :content_infos, :lesson_page_id, :integer
    remove_column :questionnaires, :lesson_page_id, :integer
  end
end
