class RecipeIngredient < ApplicationRecord
  belongs_to :recipe
  belongs_to :dish_ingredient
end
