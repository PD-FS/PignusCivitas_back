class AddFkEndowments < ActiveRecord::Migration[5.2]
  def change
    change_column :endowments, :endowment_status_id, 'integer USING CAST(endowment_status_id AS integer)'
    add_foreign_key :endowments, :endowment_statuses
    add_index(:endowments, :endowment_status_id)
  end
end
