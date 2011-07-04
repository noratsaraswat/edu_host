class AddAdminData < ActiveRecord::Migration
  def self.up
    execute("insert into users(email,encrypted_password, role) values('senthil@hotmail.com','$2a$10$hqO6oRsGZ2o4ulzITSsIMuiZTEqJqMhWAofH4EZNQVzRVmkfOQLd.','admin')
")
  end

  def self.down
  end
end
