class User < ActiveRecord::Base
  has_many :favorites
  has_many :eats, :through => :favorites

  has_many :reviews
  has_many :eats, :through => :reviews

  has_many :images
  has_many :eats, :through => :images

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  attachment :profile_image

  validates_presence_of :address
  geocoded_by :address
  after_validation :geocode
end
