class Visitor < ApplicationRecord
  belongs_to :vehicle
  belongs_to :community
  belongs_to :person
end
