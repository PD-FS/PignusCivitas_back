module Types
  class CountryType < Types::BaseObject
    field :name, String, null: true
    field :created_at, String, null: true
    field :updated_at, String, null: true
  end
end
