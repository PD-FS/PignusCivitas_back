module Types
  class DayOfWeekType < Types::BaseObject
    field :name, String, null: true
    field :created_at, String, null: true
    field :updated_at, String, null: true
  end

  class ScheduleType < Types::BaseObject
    field :name, String, null: true
    field :start_hour, String, null: true
    field :end_hour, String, null: true
    field :day_of_week, Types::DayOfWeekType, null: true
    field :created_at, String, null: true
    field :updated_at, String, null: true
  end
end
