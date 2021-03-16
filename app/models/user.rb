class User < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :area
  has_many   :recipes
  has_many   :likes
  
  validates :user_name, :birthday, presence: true
  validates :area_id, numericality: { other_than: 1 }
  with_options presence: true do
    validates :password, format: { with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i }
  end

  def liked_by?(recipe_id)
    likes.where(recipe_id: recipe_id).exists?
  end
  
end
