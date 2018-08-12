class CreateAlertStatuses < ActiveRecord::Migration[5.2]
  def change
    create_table :alert_statuses do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
    add_index :alert_statuses, :name, unique: true
  end
end
