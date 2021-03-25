class Recipe < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :dish_portion
  belongs_to :genre
  belongs_to :season

  belongs_to :user
  has_one_attached :image
  has_many   :likes
  has_many   :comments

  has_many   :recipe_ingredients
  has_many   :dish_ingredients, through: :recipe_ingredients

  has_many   :recipe_seasonings
  has_many   :seasonings, through: :recipe_seasonings

  validates  :image, :dish_name, :dish_portion_id, :season_id, :genre_id, :step_1, presence: true
  validates  :dish_portion_id, numericality: { other_than: 1 }

  def self.search(search)
    if search != ""
      Recipe.where(['dish_name LIKE(?) OR catch_copy LIKE(?) OR step_1 LIKE(?) OR step_2 LIKE(?) OR step_3 LIKE(?) OR step_4 LIKE(?) OR step_5 LIKE(?) OR dish_point LIKE(?)',
        "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%"])
    else
      Recipe.all
    end
  end

  def self.tag_search(tag_search)
    if tag_search
      RecipeIngredient.where(['dish_ingredient_id LIKE(?), "#{tagsearch}"'])
    else
      RecipeIngredient.all
    end
  end

end