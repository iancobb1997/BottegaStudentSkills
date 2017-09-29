# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

skill_array = ["ruby", "Rails", "SQL", "HTML", "Angular", "CSS"]

10.times do |u|
  User.create!(
    email: "user#{u}@user.com",
    skills: skill_array.sample,
    password: "asdfasdf"
  )
end

puts "10 users created"

1.times do |a|
  User.create!(
    email: "admin#{a}@admin.com",
    password: "asdfasdf",
    roles: "admin"
  )
end

puts "1 admin created"