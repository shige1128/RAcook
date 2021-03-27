class Recipe < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :dish_portion
  belongs_to :genre, dependent: :destroy
  belongs_to :season, dependent: :destroy

  belongs_to :user
  has_one_attached :image, dependent: :destroy
  has_many   :likes, dependent: :destroy
  has_many   :comments, dependent: :destroy

  has_many   :recipe_ingredients, dependent: :destroy
  has_many   :dish_ingredients, through: :recipe_ingredients

  has_many   :recipe_seasonings, dependent: :destroy
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

  def self.ingredient_search(ingredient_search)
    if ingrtedient_search
      RecipeIngredient.where(['dish_ingredient_id LIKE(?), "#{ingredientsearch}"'])
    else
      RecipeIngredient.all
    end

  end
  def self.season_search(season_search)
    if season_search
      Season.where(['season_id LIKE(?), "#{seasonsearch}"'])
    else
      Season.all
    end
  end

  def self.genre_search(genre_search)
    if genre_search
      Genre.where(['genre_id LIKE(?), "#{genresearch}"'])
    else
      Genre.all
    end
  end


end