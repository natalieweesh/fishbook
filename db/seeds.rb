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

1.times do
  Gang.create(
    user_id: 1,
    name: "Swimmies",
    bio: "No one swims faster than us."
  )
end

(name.length - 1).times do |index|
  GangMembership.create(
    user_id: (index + 2),
    gang_id: 1
  )
end