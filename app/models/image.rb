class Image < ActiveRecord::Base
  belongs_to :review
  attachment :profile_image
end
