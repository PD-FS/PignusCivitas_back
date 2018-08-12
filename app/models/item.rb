class Item < ApplicationRecord
  belongs_to :item_status
  belongs_to :endowment
  belongs_to :item_type
end
