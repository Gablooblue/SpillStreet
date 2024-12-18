# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#

'''
(1..20).each do |i|
  Organization.create name: Faker::Company.name, desc: Faker::Company.bs + "  " + Faker::Lorem.paragraph(10)
end

(1..100).each do |i|
  Rant.create organization_id: 1 + rand(19), body: Faker::Lorem.paragraph(20)
end

'''

file = File.open ("orgs.json")
j_data = JSON.load(file)

j_data.each do |line|
  puts line["name"]
  Organization.create name: line["name"], desc: ("UP Organization - " + line["name"])

end

