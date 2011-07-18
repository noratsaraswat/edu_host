class AddBooleanValuToChoices < ActiveRecord::Migration
  def self.up
    add_column :choices, :answer, :boolean
  end

  def self.down
  end
end
