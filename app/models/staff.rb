class Staff < ApplicationRecord
  belongs_to :staff
  belongs_to :staff_job
  belongs_to :community
end
