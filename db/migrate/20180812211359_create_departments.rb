class CreateDepartments < ActiveRecord::Migration[5.2]
  def change
    create_table :departments do |t|
      t.string :name
      t.references :country, foreign_key: true

      t.timestamps
    end
    add_index :departments, :name, unique: true
  end
end
