class AnswerInstitution < ActiveRecord::Base
  belongs_to :answer
  belongs_to :institution
end
