class CreateQuestionnaires < ActiveRecord::Migration
  def self.up
    create_table :questionnaires do |t|
      t.integer :questionnaireID # removed
      t.string :questionnaireName
      t.integer :questionID

      t.timestamps
    end
  end

  def self.down
    drop_table :questionnaires
  end
end
