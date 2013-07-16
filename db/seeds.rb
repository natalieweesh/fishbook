# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

name = %w{Saul Tony Pauli Bruiser Laser Michael}

name.each do |name|
  User.create(
    username: name,
    password: "password"
  )
end

(name.length - 1).times do |index|
  Gang.create(
    member_id: (index + 2),
    user_id: 1,
    name: "Swimmies"
  )
end