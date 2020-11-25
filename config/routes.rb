Rails.application.routes.draw do
  devise_for :users
  root to: "events#index"
  resources :events, only: [:new, :create]
end
