TCC::Application.routes.draw do
  resources :users
  root :to => 'users#index'

  # match ':controller(/:action(/:id))(.:format)'
end
