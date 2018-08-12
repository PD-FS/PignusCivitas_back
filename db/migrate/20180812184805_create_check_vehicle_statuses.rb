class CreateCheckVehicleStatuses < ActiveRecord::Migration[5.2]
  def change
    create_table :check_vehicle_statuses do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
    add_index :check_vehicle_statuses, :name, unique: true
  end
end
