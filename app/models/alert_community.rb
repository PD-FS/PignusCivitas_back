class AlertCommunity < ApplicationRecord
  belongs_to :alert_community
  belongs_to :community
  belongs_to :alert
end
