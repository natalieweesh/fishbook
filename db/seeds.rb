# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

name = %w{Saul Tony Pauli Bruiser Laser Michael}
gangs = ["Swimmies", "Sewer Lerkers", "Water Snakes", "Razor Fins"]

name.each do |name|
  User.create(
    username: name,
    password: "password"
  )
end

gangs.each do |name|
  Gang.create(
    user_id: 1,
    name: name,
    bio: "No one swims faster than us."
  )
end

(name.length - 1).times do |index|
  GangMembership.create(
    user_id: (index + 2),
    gang_id: 1
  )
end


####### POSTS LINKS
websites = name.map{ |e| "www.#{e}iscool.com"}

websites.each do |name|
  Link.create(
    content: name
  )
end

1.times do
  Post.create(
    user_id: 1,
    body: "My fellow Swimmies, check this out."
  )
end

3.times do |index|
  PostLink.create(
    link_id: (index + 1),
    post_id: 1
  )
end

GangPost.create(post_id: 1, gang_id: 1)