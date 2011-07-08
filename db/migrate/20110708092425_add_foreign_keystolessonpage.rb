class AddForeignKeystolessonpage < ActiveRecord::Migration
  def self.up
    add_column :lesson_pages, :content_info_id, :integer
    add_column :lesson_pages, :questionnaire_id, :integer
    remove_column :lesson_pages, :dataID
  end

  def self.down
  end
end
