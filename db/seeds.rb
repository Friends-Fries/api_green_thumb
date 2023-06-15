# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

if Rails.env.development?
  User.destroy_all

  ########## USER ##########
  # admin and volunteer
  User.create!(email: "admin@test.com", password: "123123", city: City.all.sample, admin: true)

  User.create!(email: "volunteer@test.com", password: "123123", city: City.all.sample)

  User.create!(email: "associate@test.com", password: "123123", city: City.all.sample, role: 1)

  User.create!(email: "plot_manager@test.com", password: "123123", city: City.all.sample, role: 2)

  puts "#{User.where(admin: true).count} admins created successfully"
  puts "#{User.where.not(admin: true).count} users created successfully"
end
