# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

if Rails.env.development?
  User.destroy_all
  City.destroy_all
  Country.destroy_all

  ########## COUNTRY ##########
  ["JAPÃO", "BRASIL", "GRÉCIA", "ITÁLIA", "ALEMANHA", "CHINA"].each do |country_name|
    Country.create(name: country_name)
  end

  puts "#{Country.count} countries created successfully"

  ########## CITY ##########
  ["TOKYO", "FLORIANÓPOLIS", "PALHOÇA DAVIS MINA", "SÃO JOSÉ"].each do |city_name|
    City.create(name: city_name, uf: city_name[2], country: Country.all.sample)
  end

  puts "#{City.count} cities created successfully"

  ########## USER ##########
  User.create!(email: "admin@admin.com", password: "123123", city: City.all.sample)

  puts "#{User.count} users created successfully"
end
