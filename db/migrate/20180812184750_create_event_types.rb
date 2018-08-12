class CreateEventTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :event_types do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
    add_index :event_types, :name, unique: true
  end
end
