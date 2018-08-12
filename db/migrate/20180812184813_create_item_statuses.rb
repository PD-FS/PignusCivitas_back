class CreateItemStatuses < ActiveRecord::Migration[5.2]
  def change
    create_table :item_statuses do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
    add_index :item_statuses, :name, unique: true
  end
end
