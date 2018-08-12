class CreateItemTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :item_types do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
    add_index :item_types, :name, unique: true
  end
end
