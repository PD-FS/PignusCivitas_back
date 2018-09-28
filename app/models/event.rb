class Event < ApplicationRecord
  belongs_to :event_status
  belongs_to :community
  belongs_to :event_type
  belongs_to :security_agent
  has_one_attached :image
end
