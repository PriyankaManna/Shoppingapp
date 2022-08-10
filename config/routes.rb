# frozen_string_literal: true

Rails.application.routes.draw do
  resources :sessions, only: %i[new create destroy]
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  post 'products/add_to_cart/:id', to: 'products#add_to_cart', as: 'products_add_to_cart'
  delete 'products/remove_from_cart/:id', to: 'products#remove_from_cart', as: 'products_remove_from_cart'

  resources :products

  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'users#new'
end
