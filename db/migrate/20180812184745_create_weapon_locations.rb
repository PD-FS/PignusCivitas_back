class CreateWeaponLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :weapon_locations do |t|
      t.string :name
      t.string :phone
      t.string :contact
      t.string :notes

      t.timestamps
    end
    add_index :weapon_locations, :name, unique: true
  end
end
