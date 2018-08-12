class Weapon < ApplicationRecord
  belongs_to :weapon_status
  belongs_to :weapon_type
  belongs_to :weapon_location
end
