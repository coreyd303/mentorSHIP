Rails.application.routes.draw do

  root to: 'static_pages#index'

  get '/auth/:provider/callback', to: 'sessions#create'
  get '/signout',                 to: 'sessions#destroy', as: 'signout'
  get '/search',                  to: 'mentors#search'
  get 'profile_type_prompt',      to: 'static_pages#profile_type_prompt'

  post 'notifications/notify',    to: 'notifications#notify'

  resources :snippets, only: [:new]
  resources :preferences
  resources :mentors
  resources :skills
  resources :students
  resources :users, only: [:update]
  resources :appointments, only: [:create]


end
