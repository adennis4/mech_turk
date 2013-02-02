class User < ActiveRecord::Base
  attr_accessible :country, :answer_count, :worker_id

  validates_presence_of :country
  validates_uniqueness_of :worker_id

  has_many :answers

end
