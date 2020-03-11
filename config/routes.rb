Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "doctors", to: 'doctors#index'
  #added destroy routes
  resources :searches, only: %i[index create destroy]
  resources :specialties, only: %i[index]
  get "my_searches", to: "dashboards#my_searches"
  get "my_appointments", to: "dashboards#my_appointments"
  get "appointment_show", to: "dashboards#appointment_show"
  delete "my_appointments/:id", to: "dashboards#my_appointments_destroy", as: 'my_appointment'
  resources :notifications, only: [:show, :update]
end
