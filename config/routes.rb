Rails.application.routes.draw do

  root to: 'static_pages#index'

  get '/auth/:provider/callback', to: 'sessions#create'
  get 'signout', to: 'sessions#destroy', as: 'signout'
  get '/search', to: 'mentors#search'

  resources :mentors
  resources :skills

end
