# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# ruby encoding: utf-8

require 'json'
require 'set'

file_names_list = [
    'types.json',
    'status.json',
    'communities.json',
    'security_agent.json'
]

# Json validations
file_names_list.each do | file_name |
    file = File.read(Rails.root.join('db','json',file_name))
    types = JSON.parse(file)
    types.each do |type|
        type["Rows"].each do | row |
            entidadesMalas = ""
            if !(row.keys.to_set.subset?(type["Entity"].constantize.column_names.to_set))
                entidadesMalas = entidadesMalas + type["Entity"] + ", "
                puts (row.keys.to_set)
                puts (type["Entity"].constantize.column_names.to_set)
            end
            if entidadesMalas != ""
                raise "Error, los campos de las entidades " + entidadesMalas + " no concuerdan con el modelo"
            end
        end
    end
end

## Destroy types
file_names_list.reverse_each do | file_name |
    file = File.read(Rails.root.join('db','json',file_name))
    types = JSON.parse(file)
    types.reverse_each do |type|
        type["Entity"].constantize.destroy_all
        ActiveRecord::Base.connection.reset_pk_sequence!(type["Entity"].constantize.table_name)
    end
end

# Destroy Tables
City.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!(City.table_name)
Department.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!(Department.table_name)
Country.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!(Country.table_name)

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

## Create types
file_names_list.each do | file_name |
    file = File.read(Rails.root.join('db','json',file_name))
    types = JSON.parse(file)
    types.each do |type|
        type["Rows"].each do | row |
            type["Entity"].constantize.create(row)
        end
    end
end