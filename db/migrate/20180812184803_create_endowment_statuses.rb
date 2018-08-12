class CreateEndowmentStatuses < ActiveRecord::Migration[5.2]
  def change
    create_table :endowment_statuses do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
    add_index :endowment_statuses, :name, unique: true
  end
end
