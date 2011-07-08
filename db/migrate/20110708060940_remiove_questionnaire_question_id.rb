class RemioveQuestionnaireQuestionId < ActiveRecord::Migration
  def self.up
    remove_column :questionnaires, :questionID
  end

  def self.down
  end
end
