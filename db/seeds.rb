# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Ingredient.destroy_all

Ingredient.create(name: "Lemon")
Ingredient.create(name: "Ice")
Ingredient.create(name: "Mint leaves")
Ingredient.create(name: "Tomato juice")
Ingredient.create(name: "Vodka")
Ingredient.create(name: "Tabasco")
Ingredient.create(name: "Orange juice")
Ingredient.create(name: "Tequila")
Ingredient.create(name: "Grenadine")
