class CreateDepartmentTable < ActiveRecord::Migration[5.2]
  def up
    remove_foreign_key :cities, :countries
    remove_index :cities, name: :index_cities_on_country_id
    remove_column :cities, :country_id
    add_column :cities, :department_id, :integer
    add_foreign_key :cities, :departments
    add_index(:cities, :department_id)
  end
end
