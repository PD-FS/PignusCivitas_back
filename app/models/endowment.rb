class Endowment < ApplicationRecord
  belongs_to :contract
  belongs_to :endowment_status
end
