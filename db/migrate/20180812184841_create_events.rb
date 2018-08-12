class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title
      t.string :notes
      t.date :date
      t.time :hour
      t.string :reported_by
      t.string :site
      t.string :facts
      t.references :event_status, foreign_key: true
      t.string :location
      t.date :end_date
      t.time :end_hour
      t.string :contact_name
      t.string :contact_phone
      t.references :community, foreign_key: true
      t.references :event_type, foreign_key: true
      t.references :security_agent, foreign_key: true

      t.timestamps
    end
  end
end
