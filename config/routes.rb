Rails.application.routes.draw do
  get root, to: 'pets#index'
  get 'home', to: 'pets#index'
  get 'sessions/new'
  get 'signup', to: 'users#new'
  get 'profile', to: 'users#show'
  post '/signup',  to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  get '/logout',  to: 'sessions#destroy'
  resources :pets
  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
