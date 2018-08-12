class CreateWeaponStatuses < ActiveRecord::Migration[5.2]
  def change
    create_table :weapon_statuses do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
    add_index :weapon_statuses, :name, unique: true
  end
end
