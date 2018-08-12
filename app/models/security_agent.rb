class SecurityAgent < ApplicationRecord
  belongs_to :security_agent_role
  belongs_to :security_company
  belongs_to :security_agent
  belongs_to :weapon
  belongs_to :agent_type
  belongs_to :schedule
  belongs_to :person
end
