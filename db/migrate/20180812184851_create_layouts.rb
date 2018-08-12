class CreateLayouts < ActiveRecord::Migration[5.2]
  def change
    create_table :layouts do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.string :attendant
      t.references :community, foreign_key: true

      t.timestamps
    end
  end
end
