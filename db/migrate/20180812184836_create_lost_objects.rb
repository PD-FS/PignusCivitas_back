class CreateLostObjects < ActiveRecord::Migration[5.2]
  def change
    create_table :lost_objects do |t|
      t.string :name
      t.date :date
      t.string :notes
      t.string :returned_to
      t.date :return_date
      t.string :phone
      t.references :community, foreign_key: true

      t.timestamps
    end
  end
end
