class Favorite < ActiveRecord::Base
  belongs_to :eat
  belongs_to :user
end
