class User < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :area
  has_many   :recipes

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :user_name, :birthday, presence: true
  validates :area_id, numericality: { other_than: 1 }
  with_options presence: true do
    validates :password, format: { with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i }
  end
end
