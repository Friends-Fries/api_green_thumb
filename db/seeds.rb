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
  # admin and volunteer
  # User.create!(name: "Atila", email: "admin@test.com", password: "123123", city: City.all.sample, admin: true)

  # User.create!(name: "Victor", email: "volunteer@test.com", password: "123123", city: City.all.sample)

  # User.create!(name: "Guilherme", email: "associate@test.com", password: "123123", city: City.all.sample, role: 1)

  # User.create!(name: "Davis", email: "plot_manager@test.com", password: "123123", city: City.all.sample, role: 2)

  # User.create!(name: "Willian", email: "plot_manager2@test.com", password: "123123", city: City.all.sample, role: 2)

  puts "#{User.where(admin: true).count} admins created successfully"
  puts "#{User.where.not(admin: true).count} users created successfully"
end
