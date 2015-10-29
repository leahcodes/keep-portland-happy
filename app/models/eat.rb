class Eat < ActiveRecord::Base
  has_many :images
  attachment :profile_image

end
