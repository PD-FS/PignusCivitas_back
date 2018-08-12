class CreateAssetStocks < ActiveRecord::Migration[5.2]
  def change
    create_table :asset_stocks do |t|
      t.string :stock_name
      t.string :manager
      t.date :last_update
      t.references :asset_stock_status, foreign_key: true
      t.references :asset, foreign_key: true
      t.references :community, foreign_key: true

      t.timestamps
    end
  end
end
