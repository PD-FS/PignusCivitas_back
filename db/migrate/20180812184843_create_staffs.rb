class CreateStaffs < ActiveRecord::Migration[5.2]
  def change
    create_table :staffs do |t|
      t.string :name
      t.string :phone
      t.date :admission_date
      t.string :notes
      t.string :address
      t.references :staff, foreign_key: true
      t.references :staff_job, foreign_key: true
      t.references :community, foreign_key: true

      t.timestamps
    end
  end
end
