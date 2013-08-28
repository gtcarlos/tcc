TCC::Application.routes.draw do

  devise_for :users
  resources :stream
  resources :users
  resources :posts
  root :to => 'home#show'

  match 'home', to: 'home#show', via: :all
  match 'home_index', to: 'home#index'
end
