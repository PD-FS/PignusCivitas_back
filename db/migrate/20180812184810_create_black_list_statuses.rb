class CreateBlackListStatuses < ActiveRecord::Migration[5.2]
  def change
    create_table :black_list_statuses do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
    add_index :black_list_statuses, :name, unique: true
  end
end
