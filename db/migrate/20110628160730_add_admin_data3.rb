class AddAdminData3 < ActiveRecord::Migration
  def self.up

    User.create :email=> "senthil.company@gmail.com",
                :encrypted_password=> "$2a$10$I1585oC2iFty/RRW.t2/veD3TJNpVZNLpZIpab6s9MYmgKGaJriXG",
                :reset_password_token=>"",
                :reset_password_sent_at=>"",
                :remember_created_at=>"",
                :sign_in_count=>"",
                :current_sign_in_at=>"",
                :last_sign_in_at=>"",
                :current_sign_in_ip=>"",
                :last_sign_ip=>"",
                :created_at=>"",
                :updated_at=>"",
                :role=>"admin"

  end

  def self.down
  end
end
