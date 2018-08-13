class CityNameNotUnique < ActiveRecord::Migration[5.2]
  def change
    remove_index :cities, name: :index_cities_on_name
    remove_index :department, name: :index_departments_on_name
  end
end
