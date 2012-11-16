class Advertisement < ActiveRecord::Base
  attr_accessible :description, :name, :image_url

  validates :name, :presence => true
  validates :description, :presence => true
  validates :image_url, :presence => true

  has_one :question
end
