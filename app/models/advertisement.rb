class Advertisement < ActiveRecord::Base
  attr_accessible :description, :name, :image_url

  validates_presence_of :name, :image_url

  has_one :question
end
