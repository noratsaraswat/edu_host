class RemovequestionnaireId < ActiveRecord::Migration
  def self.up
    remove_column :questionnaires, :questionnaireID
  end

  def self.down
    add_column :questionnaires, :questionnaireID
  end
end
