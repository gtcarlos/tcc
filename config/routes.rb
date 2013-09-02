TCC::Application.routes.draw do

  devise_for :users
  resources :users
  resources :posts, only: [:index, :create, :destroy]
  resources :friendships, only: [:create, :destroy]
  root :to => 'home#show'

  match 'home', to: 'home#show', via: :all
  match 'home_index', to: 'home#index'
end
