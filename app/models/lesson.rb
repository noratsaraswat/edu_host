class Lesson < ActiveRecord::Base
  has_and_belongs_to_many :admin_people
  has_many :lesson_pages
  validates_uniqueness_of :lessonName
  validates(:lessonName, :presence => true)

end
