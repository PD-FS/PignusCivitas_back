class CreateAlertCommunities < ActiveRecord::Migration[5.2]
  def change
    create_table :alert_communities do |t|
      t.references :alert_community, foreign_key: true
      t.references :community, foreign_key: true
      t.references :alert, foreign_key: true

      t.timestamps
    end
  end
end
