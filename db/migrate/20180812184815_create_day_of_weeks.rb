class CreateDayOfWeeks < ActiveRecord::Migration[5.2]
  def change
    create_table :day_of_weeks do |t|
      t.string :name

      t.timestamps
    end
    add_index :day_of_weeks, :name, unique: true
  end
end
