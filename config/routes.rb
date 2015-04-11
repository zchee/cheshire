Rails.application.routes.draw do
  resources :users, :only => [:new]
  resources :sessions, :only => [:new, :create, :destroy]
  root to: 'home#index'

  # static pages
  get '/blog', to: 'home#blog'
  get '/contact', to: 'home#contact'
  get '/feature', to: 'home#feature'
  get '/help', to: 'home#help'
  get '/privacy', to: 'home#privacy'

  # authentication
  get '/signup', to: 'users#new'
  get '/signin', to: 'sessions#new'
  delete '/signout', to: 'sessions#destroy'

  # github auth
  get '/auth/:provider/callback', to: 'sessions#create'
  get '/auth/failure', to: 'sessions#failure'

  mount Peek::Railtie => '/peek'
end
