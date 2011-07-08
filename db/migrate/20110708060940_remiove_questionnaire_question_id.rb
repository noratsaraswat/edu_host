class RemioveQuestionnaireQuestionId < ActiveRecord::Migration
  def self.up
    remove_column :questionnaires, :questionID
  end

  def self.down
    add_column :questionnaires, :questionID
  end
end
