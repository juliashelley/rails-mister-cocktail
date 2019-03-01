# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "cleaning db"
Dose.destroy_all

ice = Ingredient.create(name: "ice")
mint = Ingredient.create(name: "mint leaves")
salt = Ingredient.create(name: "salt")
lemon = Ingredient.create(name: "lemon")
margarita = Cocktail.create(name: "Margarita")
Dose.create(description: "6cl", cocktail: margarita, ingredient: lemon)
Dose.create(description: "10cl", cocktail: margarita, ingredient: salt)
puts "done"
