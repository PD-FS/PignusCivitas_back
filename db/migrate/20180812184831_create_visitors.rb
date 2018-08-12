class CreateVisitors < ActiveRecord::Migration[5.2]
  def change
    create_table :visitors do |t|
      t.date :checkin_date
      t.date :checkout_date
      t.string :notes
      t.string :destination
      t.references :vehicle, foreign_key: true
      t.references :community, foreign_key: true
      t.references :person, foreign_key: true

      t.timestamps
    end
  end
end
