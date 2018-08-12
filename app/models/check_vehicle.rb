class CheckVehicle < ApplicationRecord
  belongs_to :check_vehicle_status
  belongs_to :community
  belongs_to :vehicle
end
