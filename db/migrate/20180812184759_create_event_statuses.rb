class CreateEventStatuses < ActiveRecord::Migration[5.2]
  def change
    create_table :event_statuses do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
    add_index :event_statuses, :name, unique: true
  end
end
