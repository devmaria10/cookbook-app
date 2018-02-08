class Recipe < ApplicationRecord
  has_many :category_recipes
  has_many :categories, through: :category_recipes
  belongs_to :user
  
  def friendly_prep_time
    input 125
    output "2 hours, 5 minutes"

  hours = prep_time / 60
  minutes = prep_time % 60
  time_string = " "

    time_string += "#{hours} #{'hour'.pluralize(hours)}" if hours > 0

    time_string += ", " if hours > 0 && minutes > 0

    time_string += "#{minutes} #{'minute'.pluralize(minutes)}" if minutes > 0

    "#{hours} hours #{minutes} minutes"
  end 

  def as_json
    {
      id: id,
      title: title,
      chef: chef,
      ingredients: ingredients.split(", "),
      directions: directions.split(", "),
      created_at: created_at.strftime("%b %d, %Y"),
      prep_time: friendly_prep_time
    }
  end 
end
