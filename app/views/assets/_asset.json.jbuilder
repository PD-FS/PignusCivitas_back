json.extract! asset, :id, :name, :notes, :entry_date, :quantity, :location, :asset_status_id, :who, :created_at, :updated_at
json.url asset_url(asset, format: :json)
