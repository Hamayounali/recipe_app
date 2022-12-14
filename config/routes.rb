# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  root to: 'recipes#index'

  # get 'recipe_food/quantity:integer'
  resources :users, :foods, :recipes, :public_recipes, :shopping_list, :recipe_foods
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
end
