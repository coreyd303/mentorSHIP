Rails.application.routes.draw do

  root to: 'static_pages#index'

  get '/auth/:provider/callback', to: 'sessions#create'

  resources :mentors
  resources :skills
  resources :students

end
