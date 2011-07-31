class AddquestionId < ActiveRecord::Migration
  def self.up
    add_column :answers, :question_id, :integer
  end

  def self.down
  end
end
