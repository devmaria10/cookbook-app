# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.create(name: "Cheap")
Category.create(name: "Junk Food")
Category.create(name: "Edible")

CategoryRecipe.create!([
                      {category_id: 1, recipe_id: 2},
                      {category_id: 1, recipe_id: 5},
                      {category_id: 2, recipe_id: 2},
                      {category_id: 2, recipe_id: 4},
                      {category_id: 2, recipe_id: 6},
                      {category_id: 3, recipe_id: 1},
                      {category_id: 3, recipe_id: 3},
                      {category_id: 3, recipe_id: 4},
                      {category_id: 3, recipe_id: 5}
                      ])







