class CreateSecurityAgentRoles < ActiveRecord::Migration[5.2]
  def change
    create_table :security_agent_roles do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
    add_index :security_agent_roles, :name, unique: true
  end
end
