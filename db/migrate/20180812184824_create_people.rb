class CreatePeople < ActiveRecord::Migration[5.2]
  def change
    create_table :people do |t|
      t.string :last_name
      t.string :first_name
      t.string :phone
      t.string :identification
      t.references :city, foreign_key: true
      t.string :home_address
      t.string :office_address

      t.timestamps
    end
    add_index :people, :identification, unique: true
  end
end
