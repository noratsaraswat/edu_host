class Foreignkeytochoice < ActiveRecord::Migration
  def self.up
    add_column :choices, :quest_id, :integer
    remove_column :choices,:QuestionID
  end

  def self.down
  end
end
