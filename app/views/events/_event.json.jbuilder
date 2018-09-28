json.extract! event, :id, :title, :notes, :date, :hour, :reported_by, :site, :facts, :event_status_id, :location, :end_date, :end_hour, :contact_name, :contact_phone, :community_id, :event_type_id, :security_agent_id, :created_at, :updated_at
json.image rails_blob_url(event.image)
json.url event_url(event, format: :json)
