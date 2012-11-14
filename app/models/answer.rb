class Answer < ActiveRecord::Base
  attr_accessible :question_id, :quality_response, :quantity_response

  validates :quality_response, :presence => true,
            :length => {:maximum => 10}
  validates :quantity_response, :presence => true,
            :length => {:maximum => 10}

  validates :question_id, :presence => true

  belongs_to :question
end
