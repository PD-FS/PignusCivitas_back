class Contract < ApplicationRecord
  belongs_to :contract_status
  belongs_to :community
  belongs_to :security_company
end
