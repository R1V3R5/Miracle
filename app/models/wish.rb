class Wish < ActiveRecord::Base
  has_many :groups
  has_many :wish_items
  has_many :group_items
  accepts_nested_attributes_for :wish_items, allow_destroy: true

# after_create :create_list

  # def create_list
    # group = self.group.id
    # group_item_id = group.group_item_id
    # if group.group_item_id == true
      # WishItem.create(
        # wish_id: self.wish.1id,
        # group_item_id: self.group_item_ids[]
        # group_item_id: self.id
      # )
    # end
  # end
end
