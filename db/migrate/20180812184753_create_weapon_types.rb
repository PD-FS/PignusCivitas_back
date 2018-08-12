class CreateWeaponTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :weapon_types do |t|
      t.string :name
      t.string :type

      t.timestamps
    end
    add_index :weapon_types, :name, unique: true
  end
end
