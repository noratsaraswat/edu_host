class RemoveAnswerFromQuestion < ActiveRecord::Migration
  def self.up
    remove_column :quests, :answer
  end

  def self.down
  end
end
