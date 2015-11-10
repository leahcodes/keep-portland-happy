class Image < ActiveRecord::Base
  belongs_to :review
  attachment :url
end
