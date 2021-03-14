class DishPortion < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '1人分' },
    { id: 3, name: '2人分' }
  ]

  include ActiveHash::Associations
  has_many :recipes
  
end