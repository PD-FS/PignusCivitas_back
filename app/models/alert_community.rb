class AlertCommunity < ApplicationRecord
  belongs_to :community
  belongs_to :alert
end
