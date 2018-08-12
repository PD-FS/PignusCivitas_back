json.extract! contract, :id, :title, :date, :expiration, :type, :notes, :contractor, :hired, :contract_status_id, :community_id, :security_company_id, :created_at, :updated_at
json.url contract_url(contract, format: :json)
