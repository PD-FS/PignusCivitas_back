module Types
  class SecurityCompanyType < Types::BaseObject
    field :business_name, String, null: true
    field :address, String, null: true
    field :phone, String, null: true
    field :email, String, null: true
    field :identification, String, null: true
  end
end
