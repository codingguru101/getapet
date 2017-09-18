Rails.application.routes.draw do
  get '/', to: 'pets#index'
  get 'home', to: 'pets#index'
  get 'sessions/new'
  get 'signup', to: 'users#new'
  post '/signup',  to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :pets
  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
