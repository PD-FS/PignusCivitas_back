json.extract! lost_object, :id, :name, :date, :notes, :returned_to, :return_date, :phone, :community_id, :created_at, :updated_at
json.url lost_object_url(lost_object, format: :json)
