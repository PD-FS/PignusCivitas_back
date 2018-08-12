json.extract! vehicle, :id, :plate_number, :colour, :year, :brand, :model, :engine_number, :engine_size, :vehicle_type_id, :created_at, :updated_at
json.url vehicle_url(vehicle, format: :json)
