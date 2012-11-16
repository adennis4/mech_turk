class User < ActiveRecord::Base
  attr_accessible :country, :worker_id

  validates :country, :presence => true

  has_many :answers
end
