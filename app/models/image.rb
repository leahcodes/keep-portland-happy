class Image < ActiveRecord::Base
  belongs_to :eat
  attachment :url
end
