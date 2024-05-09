# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the # root path route ("/")
  # # root "articles#index"

  root to: redirect('/home')

  get 'home', to: 'home#index', as: 'home'

  get 'prebuilts', to: 'prebuilts#index', as: 'prebuilts'
  get 'prebuilts/:id', to: 'prebuilts#show', as: 'prebuilt'

  get 'custom', to: 'custom#index', as: 'custom'
  get 'customs', to: 'customs#index', as: 'customs'
  get 'customs/new', to: 'customs#new', as: 'new_custom'
  post 'custom', to: 'customs#create'

  get 'reviews', to: 'reviews#index', as: 'reviews'
  post 'reviews', to: 'reviews#create'
  get 'reviews/new', to: 'reviews#new', as: 'new_review'
  get '/reviews/:id/edit', to: 'reviews#edit', as: 'edit_review'
  get '/reviews/:id', to: 'reviews#show', as: 'review'
  patch '/reviews/:id', to: 'reviews#update'
  delete '/reviews/:id', to: 'reviews#destroy'

  get 'cart', to: 'cart#index', as: 'carts' #cart and carts both had the same name before
  post 'add_custom_to_cart/:id', to: 'item#add_custom_to_cart', as: 'add_custom_to_cart'
  post 'add_prebuilt_to_cart/:id', to: 'item#add_prebuilt_to_cart', as: 'add_prebuilt_to_cart'
  get 'checkout', to: 'pages#checkout', as: 'checkout'
  get 'confirm', to: 'pages#confirm', as: 'confirm'
  delete 'cart', to: 'cart#destroy;'


end
