module Types

  class CommunityTypeType < Types::BaseObject
    field :name, String, null: true
    field :description, String, null: true
    field :created_at, String, null: true
    field :updated_at, String, null: true
  end
  
  class CommunityType < Types::BaseObject
    field :name, String, null: true
    field :address, String, null: true
    field :phone, String, null: true
    field :admin_address, String, null: true
    field :email, String, null: true
    field :website, String, null: true
    field :attendant, String, null: true
    field :notes, String, null: true
    field :postal_code, String, null: true
    field :community, Types::CommunityType, null: true
    field :community_type, Types::CommunityTypeType, null: true
    field :created_at, String, null: true
    field :updated_at, String, null: true
  end

end
