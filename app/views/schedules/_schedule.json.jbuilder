json.extract! schedule, :id, :name, :start_hour, :end_hour, :day_of_week_id, :created_at, :updated_at
json.url schedule_url(schedule, format: :json)
