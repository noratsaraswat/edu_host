class RemovecolumnFromquestionnaires < ActiveRecord::Migration
  def self.up
    remove_column :questionnaires, :lesson_page_id
  end
 def self.down
  end
end
