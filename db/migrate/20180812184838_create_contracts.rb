class CreateContracts < ActiveRecord::Migration[5.2]
  def change
    create_table :contracts do |t|
      t.string :title
      t.date :date
      t.date :expiration
      t.string :type
      t.string :notes
      t.string :contractor
      t.string :hired
      t.references :contract_status, foreign_key: true
      t.references :community, foreign_key: true
      t.references :security_company, foreign_key: true

      t.timestamps
    end
  end
end
