TCC::Application.routes.draw do
  devise_for :users

  resources :users
  root :to => 'home#show'

  match 'home', to: 'home#show', via: :all
end
