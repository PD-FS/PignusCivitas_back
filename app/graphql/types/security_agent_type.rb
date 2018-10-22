module Types
  class SecurityAgentRoleType < Types::BaseObject
    field :name, String, null: true
    field :description, String, null: true
    field :created_at, String, null: true
    field :updated_at, String, null: true
  end

  class SecurityAgentType < Types::BaseObject
    field :security_agent_role, Types::SecurityAgentRoleType, null: true
    field :division, String, null: true
    field :admission_date, String, null: true
    field :security_company, Types::SecurityCompanyType, null: true
    field :security_agent, Types::SecurityAgentType, null: true
    field :schedule, Types::ScheduleType, null: true
    field :person, Types::PersonType, null: true
    field :created_at, String, null: true
    field :updated_at, String, null: true
  end

end
