class LessonPage < ActiveRecord::Base
  belongs_to :lesson
  belongs_to :content_info
  belongs_to :questionnaire
  #validates_uniqueness_of :content_info_id, :scope => :lesson_id
  #validates_uniqueness_of :questionnaire_id, :scope => :lesson_id
end
