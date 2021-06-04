Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get 'dashboard', to: 'pages#dashboard', as: :dashboard

  resources :offers do
    resources :bookings, only: :create
    resources :reviews, only: :create
  end

    get 'bookings/:id', to: 'bookings#accept'
  patch 'bookings/:id', to: 'bookings#accept', as: :booking_accept

  resources :bookings, only: [:update, :destroy]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
