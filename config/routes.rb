Rails.application.routes.draw do

  get  'login',           to: "sessions#new",     as: "login"
  get  'logout',          to: "sessions#destroy", as: "logout"
  post 'sessions/create',                         as: "create_session"

  resources :users
  resources :profiles, only: [:index, :show]

  root "profiles#index"
end
