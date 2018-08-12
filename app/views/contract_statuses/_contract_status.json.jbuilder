json.extract! contract_status, :id, :name, :description, :created_at, :updated_at
json.url contract_status_url(contract_status, format: :json)
