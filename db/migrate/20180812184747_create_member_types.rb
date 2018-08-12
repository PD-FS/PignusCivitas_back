class CreateMemberTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :member_types do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
    add_index :member_types, :name, unique: true
  end
end
