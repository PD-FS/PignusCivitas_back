class CreateCheckVehicles < ActiveRecord::Migration[5.2]
  def change
    create_table :check_vehicles do |t|
      t.string :entry_date
      t.string :notes
      t.date :exit_date
      t.float :cost
      t.references :check_vehicle_status, foreign_key: true
      t.string :station
      t.references :community, foreign_key: true
      t.references :vehicle, foreign_key: true

      t.timestamps
    end
  end
end
