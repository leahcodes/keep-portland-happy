class User < ActiveRecord::Base
  has_many :favorites
  has_many :eats, :through => :favorites

  has_many :reviews
  has_many :eats, :through => :reviews

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  attachment :profile_image
  

end
