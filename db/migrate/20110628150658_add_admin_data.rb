class AddAdminData < ActiveRecord::Migration
  def self.up
    User.create :email=> "senthil.company@gmail.com",
                :encrypted_password=> "$2a$10$I1585oC2iFty/RRW.t2/veD3TJNpVZNLpZIpab6s9MYmgKGaJriXG",
                :role=>"admin"

    
  end

  def self.down
  end
end
