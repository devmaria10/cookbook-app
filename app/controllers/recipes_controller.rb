class RecipesController < ApplicationController
  def index
    recipes = Recipe.all
    render json: recipes.as_json
  end 

  def create
    contact = Recipe.new(
                          title: params[:title],
                          chef: params[:chef],
                          ingredients: params[:ingredients],
                          directions: params[:directions]
                          )
    recipe.save
    render json: recipe.as_json 
  end 

  def show
    recipe = Recipe.find(params[:id])
    render json: {
                  title: recipe.title,
                  chef: recipe.chef,
                  ingredients: recipe.ingredients.split(", "),
                  directions: recipe.directions
                  }
  end 

  def update
    recipe = Recipe.find(params[:id])

    recipe.id = params[:title] || recipe.title
    recipe.chef = params[:chef] || recipe.chef
    recipe.ingredients = params[:ingredients] || 
    recipe.directions = params[:directions] || 
    recipe.save 

    render json: recipe.as_json
  end 

  def destroy
    recipe = Recipe.find(params[:id])
    recipe.destroy
    render json: { message: "Successfully destroyed recipe #{recipe.id}"}
end
