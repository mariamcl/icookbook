# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Recipe.create title: "Green Eggs and Ham", category: "Breakfast", ingredients: "eggs, ham", instructions: "Add food coloring to eggs and ham", meals: Meal.where(name: "Yummy")

Meal.create name: "Yummy", recipes: Recipe.where(title: "Green Eggs and Ham")