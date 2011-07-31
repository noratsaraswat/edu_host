class Addquestionnaire < ActiveRecord::Migration
  def self.up
    add_column :answers, :questionnaire_id, :integer
    remove_column :answers, :question_id

  end

  def self.down
  end
end
