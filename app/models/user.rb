class User < ActiveRecord::Base
  attr_accessible :country, :worker_id, :answer_count

  validates :country, :presence => true

  has_many :answers
end
