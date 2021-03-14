class Recipe < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :dish_portion

  belongs_to :user

  has_many   :recipe_ingredients
  has_many   :dish_ingredients, through: :recipe_ingredients

  has_many   :recipe_seasonings
  has_many   :seasonings, through: :recipe_seasonings

  validates  :dish_name, :dish_portion_id, :step_1, presence: true
  validates  :dish_portion_id, numericality: { other_than: 1 }

end