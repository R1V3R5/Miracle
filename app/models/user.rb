class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable
  has_many :authorizations, :dependent => :destroy
  has_many :shares, foreign_key: 'from_user_id'
  has_many :photos
  has_many :appointments
  has_many :babyies
  has_many :comments
  has_many :wishes
  has_many :features
  has_many :foods
  has_many :journals         
  has_many :milestones
  has_many :weights
end
