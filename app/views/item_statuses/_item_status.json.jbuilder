json.extract! item_status, :id, :name, :description, :created_at, :updated_at
json.url item_status_url(item_status, format: :json)
