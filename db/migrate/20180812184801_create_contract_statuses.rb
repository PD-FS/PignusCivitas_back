class CreateContractStatuses < ActiveRecord::Migration[5.2]
  def change
    create_table :contract_statuses do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
    add_index :contract_statuses, :name, unique: true
  end
end
