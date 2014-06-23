class GroupItem < ActiveRecord::Base
  belongs_to :group
  has_many :wish_items
  has_many :wishes
  accepts_nested_attributes_for :wishes
end
