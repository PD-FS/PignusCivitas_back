module Types
  class CityType < Types::BaseObject
    field :name, String, null: true
    field :country, Types::CountryType, null: true
    field :created_at, String, null: true
    field :updated_at, String, null: true
  end
end
