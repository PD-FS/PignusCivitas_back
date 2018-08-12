class CreateAssets < ActiveRecord::Migration[5.2]
  def change
    create_table :assets do |t|
      t.string :name
      t.string :notes
      t.date :entry_date
      t.integer :quantity
      t.string :location
      t.references :asset_status, foreign_key: true
      t.string :who

      t.timestamps
    end
  end
end
