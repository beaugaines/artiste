Rails.application.routes.draw do

  authenticated :user do
    root 'artworks#index', as: :authenticated_root
  end

  root 'welcome#index'

  devise_for :users

  resources :images, only: [:update]
  
  resources :users, only: [] do
    resources :artworks
    resource :profile
  end
end
