class RemoveFkAlertCommunity < ActiveRecord::Migration[5.2]
  def change
    remove_foreign_key :alert_communities, :alert_communities
    remove_index :alert_communities, name: :index_alert_communities_on_alert_community_id
    remove_column :alert_communities, :alert_community_id
  end
end
