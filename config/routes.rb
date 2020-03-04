Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "doctors", to: 'doctors#index'
  resources :searches, only: %i[index show create]
  resources :specialties, only: %i[index]
  resources :dashboards, only: %i[index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
