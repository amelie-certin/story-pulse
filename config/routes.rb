Rails.application.routes.draw do
  devise_for :admin_users
  namespace :admin do
      resources :stories
      resources :admin_users

      root to: "stories#index"
    end

  resources :stories, only: %i[show update index]

  root 'stories#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
