class Eat < ActiveRecord::Base
  has_many :favorites
  has_many :users, :through => :favorites

  has_many :reviews
  has_many :users, :through => :reviews

  has_many :images
  has_many :users, :through => :images


  validates :name, :presence => true
  validates :category, :presence => true
  validates :address, :presence => true
  validates :location, :presence => true
  validates :neighborhood, :presence => true

  attachment :profile_image

  geocoded_by :address   # can also be an IP address
  after_validation :geocode          # auto-fetch coordinates
end
