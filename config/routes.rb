Rails.application.routes.draw do
  root to: 'home#index'

  resources :movies, :directors, :genres
end
