class Image < ActiveRecord::Base
  belongs_to :user
  belongs_to :eat
  attachment :profile_image
end
