class CreateVehicles < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicles do |t|
      t.string :plate_number
      t.string :colour
      t.string :year
      t.string :brand
      t.string :model
      t.string :engine_number
      t.integer :engine_size
      t.references :vehicle_type, foreign_key: true

      t.timestamps
    end
    add_index :vehicles, :plate_number, unique: true
  end
end
