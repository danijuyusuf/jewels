Rails.application.routes.draw do
  root to: "homes#index"
  resources :moderators
  resources :sessions
  get "/about", to: "homes#about", as: :about
end
