class Quest < ActiveRecord::Base
belongs_to :questionnaire
has_many :choices
validates_uniqueness_of :question
validates(:question,:presence=>true)
end
