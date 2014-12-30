# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user_types = ['Admin', 'SuperVisor', 'customer', 'Technical Person']

5.times do
  User.create(
    name: Faker::Name.name,
    user_level: user_types.sample,
    registered_since: rand(1..10).years.ago.to_date,
    topic: Faker::Internet.domain_word,
    warnings: rand(1..20)
  )
end