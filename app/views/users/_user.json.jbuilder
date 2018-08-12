json.extract! user, :id, :username, :password, :last_login, :email, :person_id, :created_at, :updated_at
json.url user_url(user, format: :json)
