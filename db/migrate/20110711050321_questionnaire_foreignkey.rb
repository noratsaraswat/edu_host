class QuestionnaireForeignkey < ActiveRecord::Migration
  def self.up
    add_column :quests, :questionnaire_id, :integer
 end

  def self.down
  end
end
