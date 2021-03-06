Rails.application.routes.draw do
  devise_for :users
  get 'recipes/index'
  root to: "recipes#index"

  resources :recipes do
    resources :comments, only: :create
    collection do
      get 'search'
    end
    member do
      get 'ingredient_search'
      get 'season_search'
      get 'genre_search'
    end
  end
  
  post 'like/:id' => 'likes#create', as: 'create_like'
  delete 'like/:id' => 'likes#destroy', as: 'destroy_like'
end
