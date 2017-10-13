# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"
require "json"

puts "Destroying coctails"
Cocktail.destroy_all

puts "Adding new coctails"
attributes = [
  {
    name: "kill king"
  },
  {
    name: "king of alchohol"
  },
  {
    name: "queen"
  }
]

Cocktail.create!(attributes)
puts "Seed done!"

html = open('http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list').read
json = JSON.parser.new(html)

hash =  json.parse()
parsed = hash['data']
parsed.each do |name1|
  Ingredient.create!(name1)
end
