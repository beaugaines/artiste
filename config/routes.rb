Rails.application.routes.draw do

  root 'welcome#index'

  authenticated :user do
    root 'profile#show', as: :authenticated_root
  end

  devise_for :users

  resources :users, only: [] do
    resource :profile
  end
end
