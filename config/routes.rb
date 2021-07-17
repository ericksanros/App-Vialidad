Rails.application.routes.draw do

  

  get 'home/index'
  #users routes
  #resources :user, only: [:new, :create, :edit, :update, :show, :destroy]

  root "home#index"
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy', as: 'logout'
 

  get 'dropoff/index'
  #root "school#index"
  resources :school
  resources :group
  resources :student
  resources :dropoff
  get "/group/:id", to: "group#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
