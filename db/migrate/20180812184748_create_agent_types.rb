class CreateAgentTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :agent_types do |t|
      t.string :name
      t.string :type

      t.timestamps
    end
    add_index :agent_types, :name, unique: true
    add_index :agent_types, :type, unique: true
  end
end
