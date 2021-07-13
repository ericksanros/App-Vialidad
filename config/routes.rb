Rails.application.routes.draw do

  root 'sessions#home'

  #users routes
  resources :user, only: [:new, :create, :edit, :update, :show, :destroy]

  #sessions toutes
  get '/login', to: 'sessions#login'
  post '/login' to: 'sessions#create'
  post 'logout' to: 'sessions#destroy'
  get '/logout' to: 'sessions#destroy'

  get 'dropoff/index'
  #root "school#index"
  resources :school
  resources :group
  resources :student
  resources :dropoff
  get "/group/:id", to: "group#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
