module Types
  class EventStatusType < Types::BaseObject
    field :name, String, null: true
    field :description, String, null: true
    field :created_at, String, null: true
    field :updated_at, String, null: true
  end

  class EventTypeType < Types::BaseObject
    field :name, String, null: true
    field :description, String, null: true
    field :created_at, String, null: true
    field :updated_at, String, null: true
  end

  class EventType < Types::BaseObject
    field :title, String, null: true
    field :notes, String, null: true
    field :date, String, null: true
    field :hour, String, null: true
    field :reported_by, String, null: true
    field :site, String, null: true
    field :facts, String, null: true
    field :event_status, Types::EventStatusType, null: true
    field :location, String, null: true
    field :end_date, String, null: true
    field :end_hour, String, null: true
    field :contact_name, String, null: true
    field :contact_phone, String, null: true
    field :community, Types::CommunityType, null: true
    field :event_type, Types::EventTypeType, null: true
    field :security_agent, Types::SecurityAgentType, null: true
    field :created_at, String, null: true
    field :updated_at, String, null: true
  end

end
