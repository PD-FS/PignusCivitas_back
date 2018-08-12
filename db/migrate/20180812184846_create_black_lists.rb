class CreateBlackLists < ActiveRecord::Migration[5.2]
  def change
    create_table :black_lists do |t|
      t.string :notes
      t.date :date
      t.references :black_list_status, foreign_key: true
      t.string :facts
      t.references :person, foreign_key: true

      t.timestamps
    end
  end
end
