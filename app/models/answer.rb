class Answer < ActiveRecord::Base
  attr_accessible :quality_response, :quantity_response, :question_id, :user_id

  validates :quality_response, :presence => true,
            :length => {:maximum => 10}
  validates :quantity_response, :presence => true,
            :length => {:maximum => 10}

  validates :question_id, :presence => true
  validates :user_id, :presence => true

  belongs_to :question
  belongs_to :user
end
