Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # GET /about
  get "about-us", to: "about#index", as: :about

  # GET /sign-up
  get "sign_up", to: "registrations#new"
  post "sign_up", to: "registrations#create"

  # GET /sign-in
  get "sign_in", to: "sessions#new"
  post "sign_in", to: "sessions#create"

  # logout
  delete "logout", to: "sessions#destroy"

  # passwords
  get "password", to: "passwords#edit", as: :edit_password
  patch "password", to: "passwords#update"

  # forgot password
  get "password/reset", to: "password_resets#new"
  post "password/reset", to: "password_resets#create"
  get "password/reset/edit", to: "password_resets#edit"
  patch "password/reset/edit", to: "password_resets#update"

  # twitter
  get "auth/twitter/callback", to: "omniauth_callbacks#twitter"

  # GET /
  root to: "main#index"
end
