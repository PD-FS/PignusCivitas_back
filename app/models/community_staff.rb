class CommunityStaff < ApplicationRecord
  belongs_to :staff
  belongs_to :community
end
