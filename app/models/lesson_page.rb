class LessonPage < ActiveRecord::Base
  belongs_to :lesson
  belongs_to :content_info
  belongs_to :questionnaire
end
