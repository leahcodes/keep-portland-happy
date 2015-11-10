class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :eat
  has_many :images
  
  validates :title, :presence => true
  validates :content, :presence => true
  validates :rating, :presence => true

end
