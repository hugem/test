Rails.application.routes.draw do
  get  'login',           to: "sessions#new",     as: "login"
  get  'logout',          to: "sessions#destroy", as: "logout"
  post 'sessions/create',                         as: "create_session"

  resources :users

  root "users#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
