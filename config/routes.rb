TCC::Application.routes.draw do

  resources :events

  resources :investor_groups

  resources :interests

  resources :statistics

  resources :products

  resources :showcases

  resources :startups

  resources :messages

  resources :investors#, :only => [:show, :create, :edit, :destroy]

  resources :upgrades

  resources :rankings

  resources :badges

  resources :credit_cards

  resources :payments

  resources :feeds

  resources :reports

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  devise_for :users
  ActiveAdmin.routes(self)
  resources :users
  resources :posts, only: [:index, :create, :destroy]
  resources :friendship, only: [:create, :destroy]
  root :to => 'home#show'


  # Home
  match 'home', to: 'home#show', via: :all
  match 'index', to: 'home#index', as: 'home_index'

  # Users
  match '/users/:id/settings', to: 'users#settings', as: 'settings_user'

  # Messages
   match 'select_user', to: 'messages#select'
  match 'show_user', to: 'messages#showuser'

	# Investors
end
