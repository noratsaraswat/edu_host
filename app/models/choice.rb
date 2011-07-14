class Choice < ActiveRecord::Base
  belongs_to :quest
  validates(:ChoiceAnswers,:presence=>true)
end
