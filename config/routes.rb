Rails.application.routes.draw do
  namespace :admin do
      resources :stories

      root to: "stories#index"
    end

  resources :stories, only: %i[show index]

  root 'stories#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
