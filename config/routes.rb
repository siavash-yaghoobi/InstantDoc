Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "doctors", to: 'doctors#index'
  resources :searches, only: %i[index show create]
  resources :specialties, only: %i[index]
  get "my_searches", to: "dashboards#my_searches"
  get "my_appointments", to: "dashboards#my_appointments"

  resources :notifications, only: [:show, :update]
end
