class Category < ApplicationRecord
  has_many :categoryrecipes
  has_many :recipes, through: :category_recipes
end
