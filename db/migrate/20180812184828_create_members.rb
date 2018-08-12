class CreateMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :members do |t|
      t.string :address
      t.string :office_address
      t.string :notes
      t.references :community, foreign_key: true
      t.references :person, foreign_key: true

      t.timestamps
    end
  end
end
