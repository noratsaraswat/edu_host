class LessonClass < ActiveRecord::Base
  belongs_to :lesson
  belongs_to :class_detail

end
