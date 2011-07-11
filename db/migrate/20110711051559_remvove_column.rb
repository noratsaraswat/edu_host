class RemvoveColumn < ActiveRecord::Migration
  def self.up
    remove_column :quests,:questionnaireID
  end

  def self.down
  end
end
