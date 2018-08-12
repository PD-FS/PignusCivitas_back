class CreateCommunities < ActiveRecord::Migration[5.2]
  def change
    create_table :communities do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.string :admin_address
      t.string :email
      t.string :webSite
      t.string :attendant
      t.string :notes
      t.string :postal_code
      t.references :community, foreign_key: true
      t.references :community_type, foreign_key: true

      t.timestamps
    end
    add_index :communities, :name, unique: true
    add_index :communities, :email, unique: true
  end
end
