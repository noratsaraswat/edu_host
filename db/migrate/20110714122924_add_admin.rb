class AddAdmin < ActiveRecord::Migration
  def self.up
     execute("insert into users(email,encrypted_password,name) values('senthil.company@gmail.com','$2a$10$hqO6oRsGZ2o4ulzITSsIMuiZTEqJqMhWAofH4EZNQVzRVmkfOQLd.','senthil');")
  end

  def self.down
  end
end
