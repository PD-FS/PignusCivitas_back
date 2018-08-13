# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# ruby encoding: utf-8

require 'json'

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

## Colombia Departments and Cities

file = File.read(Rails.root.join('db','json','colombia.min.json'))
colombia = JSON.parse(file)

colombia.each do |d|
    Department.create(name: d["departamento"], country_id: Country.where(:name => 'Colombia').pluck(:id)[0])
    d["ciudades"].each do |c|
        City.create(name: c, department_id: Department.where(:name => d["departamento"]).pluck(:id)[0])
    end
end
