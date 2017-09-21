Rails.application.routes.draw do
  get '/', to: 'sessions#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'

  get 'sessions/new'
  get 'signup', to: 'users#new'
  get 'profile', to: 'users#show'
  post '/signup',  to: 'users#create'

  get '/logout',  to: 'sessions#destroy'
  get 'petfinder/search', to: 'petfinder_request#index'
  post 'petfinder/search', to: 'petfinder_request#index'
  get 'results', to: 'petfinder_request#index'

get 'home', to: 'pets#index'





  root 'users#new'
get 'users/new'

get 'auth/:provider/callback' => 'sessions#create'
get 'auth/facebook', as: 'facebook_login'
get 'logout' => 'sessions#destroy'
  resources :pets
  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
