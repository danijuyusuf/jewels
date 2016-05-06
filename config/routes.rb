Rails.application.routes.draw do
  root to: "homes#index"
  resources :moderators
  resources :sessions
end
