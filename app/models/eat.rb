class Eat < ActiveRecord::Base
  has_many :images
  attachment :profile_image
  has_many :favorites
  has_many :users, :through => :favorites
end
