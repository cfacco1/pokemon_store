Rails.application.routes.draw do
  get 'avatars/create'
  root 'items#index'
  resources :items
  resources :carts, only: [:show, :edit, :update]
  devise_for :users
  namespace :admin do
    resources :items
  end
  get 'home/private'
  resources :orders
  resources :charges, only: [:new, :create]

  resources :users, only: [:show] do
    resources :avatars, only: [:create]
  end
end
