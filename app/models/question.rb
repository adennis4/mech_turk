class Question < ActiveRecord::Base
  attr_accessible :advertisement_id, :description

  validates :description, :presence => true

  belongs_to :advertisement
  has_many :answers

end
