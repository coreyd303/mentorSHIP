Rails.application.routes.draw do

  root to: 'static_pages#index'

  get '/auth/:provider/callback', to: 'sessions#create'
  get 'profile_type_prompt', to: 'static_pages#profile_type_prompt'
  get '/sign_out', to: 'sessions#destroy'

  resources :mentors
  resources :skills
  resources :students
end
