class Group < ActiveRecord::Base
  has_many :wishes
  has_many :users
  has_many :group_items
  has_many :wish_items
end
