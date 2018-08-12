class CreateAssetStatuses < ActiveRecord::Migration[5.2]
  def change
    create_table :asset_statuses do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
    add_index :asset_statuses, :name, unique: true
  end
end
