class CreateCommunityTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :community_types do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
    add_index :community_types, :name, unique: true
  end
end
