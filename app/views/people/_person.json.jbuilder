json.extract! person, :id, :last_name, :first_name, :phone, :identification, :city_id, :home_address, :office_address, :created_at, :updated_at
json.image rails_blob_url(person.image)
json.url person_url(person, format: :json)
