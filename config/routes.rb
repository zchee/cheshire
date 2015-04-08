Rails.application.routes.draw do
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  root to: 'home#index'

  get '/signup', to: 'users#new', via: 'get'
  get '/signin', to: 'sessions#new', via: 'get'
  get '/signout', to: 'sessions#destroy', via: 'delete'
  get '/about', to: 'home#about', via: 'get'
  get '/contact', to: 'home#contact', via: 'get'
  get '/feature', to: 'home#feature', via: 'get'
  get '/help', to: 'home#help', via: 'get'
  get '/privacy', to: 'home#privacy', via: 'get'

  get '/auth/:provider/callback', to: 'sessions#create'

  mount Peek::Railtie => '/peek'
end
