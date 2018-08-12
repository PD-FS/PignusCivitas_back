class CreateAgentSchedules < ActiveRecord::Migration[5.2]
  def change
    create_table :agent_schedules do |t|
      t.references :schedule, foreign_key: true
      t.references :security_agent, foreign_key: true
      t.references :contract, foreign_key: true

      t.timestamps
    end
  end
end
