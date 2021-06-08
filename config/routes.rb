Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get 'dashboard', to: 'pages#dashboard', as: :dashboard

  resources :offers do
    resources :bookings, only: :create
    resources :reviews, only: :create
  end

  resources :bookings, only: [:update, :destroy]

  resources :chatrooms, only: [:show, :create] do
    resources :messages, only: [:create, :index]
  end

  # post "/dashboard", to: 'messages#create', as: :message_create

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
