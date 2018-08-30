class RemoveFkCommunity < ActiveRecord::Migration[5.2]
  def change
    remove_foreign_key :alerts, column: :community_id
    remove_index :alerts, name: :index_alerts_on_community_id
    remove_column :alerts, :community_id
  end
end
