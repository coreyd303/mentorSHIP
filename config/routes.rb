Rails.application.routes.draw do

<<<<<<< HEAD
  root to: 'static_pages#index'

  get '/auth/:provider/callback', to: 'sessions#create'

  resources :mentors
  resources :skills

=======
  root to: "static_pages#index"

  resources :mentors
  resources :students
>>>>>>> master
end
