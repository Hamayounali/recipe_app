Rails.application.routes.draw do
  # get 'recipe_food/quantity:integer'
  root "users#index"
  resources :foods, only: [:index, :create, :destroy]
  resources :recipes, only: [:index, :create, :destroy]
  resources :shopping_list, only: [:index, :create, :destroy]
  resources :public_recipes, only: [:index, :create, :destroy]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
 

end
