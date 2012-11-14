class Advertisement < ActiveRecord::Base
  attr_accessible :description, :name

  validates :name, :presence => true
  validates :description, :presence => true

  has_one :question
end
