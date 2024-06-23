Rails.application.routes.draw do
  root 'home#index'
  resources :juegos, only: [:index, :show]
  resources :dinamicas, only: [:index, :show]
  resources :aplausos, only: [:index, :show]
end
