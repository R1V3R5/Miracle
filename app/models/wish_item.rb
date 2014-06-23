class WishItem < ActiveRecord::Base
  belongs_to :user
  belongs_to :wish
  belongs_to :group
  belongs_to :group_item


  
end
