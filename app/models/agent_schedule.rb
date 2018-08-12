class AgentSchedule < ApplicationRecord
  belongs_to :schedule
  belongs_to :security_agent
  belongs_to :contract
end
