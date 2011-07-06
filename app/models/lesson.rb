class Lesson < ActiveRecord::Base
  has_and_belongs_to_many :admin_people
end
