class CreateQuests < ActiveRecord::Migration
  def self.up
    create_table :quests do |t|
      t.integer :questionnaireID
      t.string :question
      t.string :image
      t.string :answer

      t.timestamps
    end
  end

  def self.down
    drop_table :quests
  end
end
