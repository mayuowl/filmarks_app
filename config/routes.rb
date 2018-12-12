Rails.application.routes.draw do
  root to: "home#index"

  namespace :api do
    namespace :v1 do
      resources :users, only: [:index]
      resources :movies, only: [:index, :show]
      resources :movie_directors, only: [:index, :show]
    end
  end

  namespace :admin do
    namespace :v1 do
      resources :movies, only: [:create, :update, :destroy]
      resources :movie_directors, only: [:create, :update, :destroy]
    end
  end
end
