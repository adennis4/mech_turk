class Answer < ActiveRecord::Base
  attr_accessible :question_id, :response

  validates :response, :presence => true,
                       :length => {:maximum => 10}
  validates :question_id, :presence => true

  belongs_to :question
end
