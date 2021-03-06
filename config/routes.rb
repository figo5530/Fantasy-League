Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'users#home'
  resources :users
  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  get '/auth/facebook/callback', to: 'sessions#create_with_facebook'
end
