Rails.application.routes.draw do
  root 'home#index'
  
  resources :juegos, only: [:index, :show] do
    member do
      post :upload_image
    end
  end
  
  resources :dinamicas, only: [:index, :show] do
    member do
      post :upload_image
    end
  end
  
  resources :aplausos, only: [:index, :show] do
    member do
      post :upload_image
    end
  end
end
