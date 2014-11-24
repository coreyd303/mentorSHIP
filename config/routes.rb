Rails.application.routes.draw do

  root to: 'static_pages#index'

  get '/home',                    to: 'static_pages#home'
  get '/auth/:provider/callback', to: 'sessions#create'
  get 'signout',                  to: 'sessions#destroy', as: 'signout'
  get '/search',                  to: 'mentors#search'
  get 'profile_type_prompt',      to: 'static_pages#profile_type_prompt'

  resources :mentors
  resources :skills
  resources :students
  resources :users, only: [:update]
end
