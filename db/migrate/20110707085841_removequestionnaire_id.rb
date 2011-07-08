class RemovequestionnaireId < ActiveRecord::Migration
  def self.up
    remove_column :questionnaires, :questionnaireID
  end

  def self.down
  end
end
