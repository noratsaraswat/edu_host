class ClassDetail < ActiveRecord::Base
    has_many :lesson_classes
    validates_uniqueness_of :classname
end
