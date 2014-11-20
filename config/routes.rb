Rails.application.routes.draw do

  root to: 'static_pages#index'

  get '/auth/:provider/callback', to: 'sessions#create'
  get 'profile_type_prompt', to: 'static_pages#profile_type_prompt'

  resources :mentors
  resources :skills
  resources :students
end
