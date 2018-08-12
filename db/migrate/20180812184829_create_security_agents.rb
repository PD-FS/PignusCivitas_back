class CreateSecurityAgents < ActiveRecord::Migration[5.2]
  def change
    create_table :security_agents do |t|
      t.references :security_agent_role, foreign_key: true
      t.string :division
      t.date :admission_date
      t.references :security_company, foreign_key: true
      t.references :security_agent, foreign_key: true
      t.references :weapon, foreign_key: true
      t.references :agent_type, foreign_key: true
      t.references :schedule, foreign_key: true
      t.references :person, foreign_key: true

      t.timestamps
    end
  end
end
