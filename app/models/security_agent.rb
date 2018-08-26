class SecurityAgent < ApplicationRecord
  belongs_to :security_agent_role
  belongs_to :security_company
  belongs_to :security_agent, optional:true
  belongs_to :weapon, optional:true
  belongs_to :agent_type
  belongs_to :schedule, optional:true
  belongs_to :person

  def name_with_initial
    "#{person.first_name} #{person.last_name}"
  end
end
