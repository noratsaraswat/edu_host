class RemoveColum < ActiveRecord::Migration
  def self.up
    remove_column :content_infos, :lesson_page_id

  end

  def self.down
  end
end
