class CreateWeapons < ActiveRecord::Migration[5.2]
  def change
    create_table :weapons do |t|
      t.string :name
      t.references :weapon_status, foreign_key: true
      t.string :notes
      t.references :weapon_type, foreign_key: true
      t.references :weapon_location, foreign_key: true

      t.timestamps
    end
  end
end
