class CreateCheckStaffs < ActiveRecord::Migration[5.2]
  def change
    create_table :check_staffs do |t|
      t.date :entry_date
      t.date :exit_date
      t.string :notes
      t.references :staff, foreign_key: true

      t.timestamps
    end
  end
end
