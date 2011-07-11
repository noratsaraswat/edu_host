class Questionnaire < ActiveRecord::Base
  has_many :lesson_pages
  has_many :quests
  validates_uniqueness_of :questionnaireName
  validates(:questionnaireName, :presence => true)
 end
