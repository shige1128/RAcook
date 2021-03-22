Rails.application.routes.draw do
  devise_for :users
  get 'recipes/index'
  root to: "recipes#index"

  resources :recipes, only: [:index, :new, :create, :show] do
    collection do
      get 'search'
    end
  end
  
  post 'like/:id' => 'likes#create', as: 'create_like'
  delete 'like/:id' => 'likes#destroy', as: 'destroy_like'
end
