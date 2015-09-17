Rails.application.routes.draw do

  root to: 'users#new'
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show]

  resources :bands
  resources :albums, except: [:index]
  resources :tracks, except: [:index]
end
