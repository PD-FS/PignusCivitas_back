class CreateAlerts < ActiveRecord::Migration[5.2]
  def change
    create_table :alerts do |t|
      t.string :title
      t.string :content
      t.date :creation_date
      t.references :alert_status, foreign_key: true
      t.string :coordinates
      t.string :evidence
      t.references :community, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
