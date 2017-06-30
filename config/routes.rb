Rails.application.routes.draw do
  root to: 'pages#home'

  devise_for :users

  resources :evaluations
  resources :students
  resources :users, only: [:show]
  resources :batches, except: [:destroy]

end
