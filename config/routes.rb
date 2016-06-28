Rails.application.routes.draw do

  authenticated :user do
    root 'artworks#index', as: :authenticated_root
  end

  root 'welcome#index'

  devise_for :users,
    path: 'auth',
    path_names: {
      sign_in: 'login',
      sign_up: 'signup',
      sign_out: 'logout'
    },
    controllers: {
      registrations: 'users/registrations'
    }

  resources :images, only: [:update]
  
  resources :users, only: [] do
    resources :artworks
    resource :profile
  end
end
