class CreateAdminPeople < ActiveRecord::Migration
  def self.up
    create_table :admin_people do |t|
      t.string :name
      t.integer :lessonID

      t.timestamps
    end
  end

  def self.down
    drop_table :admin_people
  end
end
