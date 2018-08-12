# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# ruby encoding: utf-8

# Destroy Tables

City.destroy_all
Department.destroy_all
Country.destroy_all

## Countries

country_list = [
    "Colombia"
]

country_list.each do |name|
    Country.create( name: name )
end

## Departments

department_list = [
    ["Cundinamarca", Country.where(:name => 'Colombia').pluck(:id)[0]]
]

department_list.each do |name, country_id|
    Department.create(name: name, country_id: country_id)
end

## Cities

cities_list = [
    [ "Bogotá", Department.where(:name => 'Cundinamarca').pluck(:id)[0]]
]

cities_list.each do |name, department_id|
    City.create(name: name, department_id: department_id)
end
