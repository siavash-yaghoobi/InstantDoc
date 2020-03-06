Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "doctors", to: 'doctors#index'
  #added destroy routes
  resources :searches, only: %i[index create destroy]
  resources :specialties, only: %i[index]
  get "my_searches", to: "dashboards#my_searches"
  get "my_appointments", to: "dashboards#my_appointments"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
