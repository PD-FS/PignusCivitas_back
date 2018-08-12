class CreateSecurityCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :security_companies do |t|
      t.string :business_name
      t.string :address
      t.string :phone
      t.string :email
      t.string :identification

      t.timestamps
    end
    add_index :security_companies, :business_name, unique: true
    add_index :security_companies, :email, unique: true
    add_index :security_companies, :identification, unique: true
  end
end
