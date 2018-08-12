class CreateMinuteBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :minute_books do |t|
      t.date :date
      t.string :generated_by
      t.string :notes
      t.string :file
      t.references :community, foreign_key: true

      t.timestamps
    end
  end
end
