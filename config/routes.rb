Rails.application.routes.draw do
  root to: "movies#index"

  resources :genres, only: [:index, :show, :new, :create, :edit, :update]
  resources :directors, only: [:index, :show, :new, :create, :edit, :update]
  resources :movies, only: [:index, :show, :new, :create, :edit, :update]
end
