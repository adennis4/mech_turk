class Answer < ActiveRecord::Base
  attr_accessible :question_id, :response

  validates :response, :presence => true
  validates :question_id, :presence => true

  belongs_to :question
end
