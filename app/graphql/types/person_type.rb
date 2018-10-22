module Types
  class PersonType < Types::BaseObject
    field :last_name, String, null: true
    field :first_name, String, null: true
    field :phone, String, null: true
    field :identification, String, null: true
    field :city, Types::CityType, null: true
    field :home_address, String, null: true
    field :office_address, String, null: true
    field :created_at, String, null: true
    field :updated_at, String, null: true
  end
end
