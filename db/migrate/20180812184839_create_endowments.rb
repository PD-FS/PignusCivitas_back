class CreateEndowments < ActiveRecord::Migration[5.2]
  def change
    create_table :endowments do |t|
      t.string :stock_name
      t.date :date
      t.string :accountable
      t.string :endowment_status_id
      t.references :contract, foreign_key: true

      t.timestamps
    end
  end
end
