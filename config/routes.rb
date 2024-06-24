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

  get 'reflexion', to: 'home#reflexion'
  get 'home/reflexion1', to: 'home#reflexion1', as: 'reflexion_1'
  get 'home/reflexion2', to: 'home#reflexion2', as: 'reflexion_2'
  get 'home/reflexion3', to: 'home#reflexion3', as: 'reflexion_3'
  get 'home/reflexion4', to: 'home#reflexion4', as: 'reflexion_4'
end
