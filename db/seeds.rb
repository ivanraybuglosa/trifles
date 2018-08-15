# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(name:  "Ivan Ray Buglosa",
    email: "ivanraybuglosa@gmail.com",
    password:              "ivanbuglosa",
    password_confirmation: "ivanbuglosa",
    admin: true)

99.times do |n|
name  = Faker::Name.name
email = "example-#{n+1}@gmail.com"
password = "password"
User.create!(name:  name,
    email: email,
    password:              password,
    password_confirmation: password)
end

9.times do |n|
    title  = "title-#{n+1}"
    description = "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
    Category.create!(
    title: title,
    description: description)
end
