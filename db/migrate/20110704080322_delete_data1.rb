class DeleteData1 < ActiveRecord::Migration
  def self.up
    execute("delete from users where email='senthil.company@gmail.com'")
  end

  def self.down
  end
end
