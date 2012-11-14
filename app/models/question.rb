class Question < ActiveRecord::Base
  attr_accessible :advertisement_id, :quantity_question, :quality_question

  validates :quantity_question, :presence => true
  validates :quality_question, :presence => true

  belongs_to :advertisement
  has_many :answers

end
