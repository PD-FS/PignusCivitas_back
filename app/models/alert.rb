class Alert < ApplicationRecord
  belongs_to :alert_status
  belongs_to :community
  belongs_to :user
end
