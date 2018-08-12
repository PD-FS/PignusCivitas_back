class CreateSchedules < ActiveRecord::Migration[5.2]
  def change
    create_table :schedules do |t|
      t.string :name
      t.time :start_hour
      t.time :end_hour
      t.references :day_of_week, foreign_key: true

      t.timestamps
    end
  end
end
