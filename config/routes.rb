Rails.application.routes.draw do
  devise_for :users
  root "rooms#index"
  resources :users, only: [:edit, :update]
  resources :rooms, only: [:new, :create, :destroy]
  resources :messages, only: [:index, :create]
end
