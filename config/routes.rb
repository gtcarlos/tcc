TCC::Application.routes.draw do
  devise_for :users

  resources :users
  root :to => 'users#index'

  # match ':controller(/:action(/:id))(.:format)'
end
