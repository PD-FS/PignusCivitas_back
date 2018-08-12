class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.references :item_status, foreign_key: true
      t.integer :amount
      t.string :characteristics
      t.string :accountable
      t.references :endowment, foreign_key: true
      t.references :item_type, foreign_key: true

      t.timestamps
    end
  end
end
