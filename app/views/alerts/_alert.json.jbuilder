json.extract! alert, :id, :title, :content, :creation_date, :alert_status_id, :coordinates, :evidence, :community_id, :user_id, :created_at, :updated_at
json.url alert_url(alert, format: :json)
