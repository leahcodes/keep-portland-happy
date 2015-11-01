class Eat < ActiveRecord::Base
  validates :name, :presence => true
  validates :category, :presence => true
  validates :address, :presence => true
  validates :location, :presence => true
  validates :neighborhood, :presence => true

  has_many :images
  attachment :profile_image
  has_many :favorites
  has_many :users, :through => :favorites
end
