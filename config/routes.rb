Rails.application.routes.draw do

  root to: 'static_pages#index'

  get '/auth/:provider/callback', to: 'sessions#create'
  get '/signout',                 to: 'sessions#destroy', as: 'signout'
  get '/search',                  to: 'mentors#search'
  get 'profile_type_prompt',      to: 'static_pages#profile_type_prompt'

  resources :snippets, only: [:new]
  resources :mentors
  resources :skills
  resources :students
  resources :users, only: [:update]
  resources :appointments, only: [:create]
end
