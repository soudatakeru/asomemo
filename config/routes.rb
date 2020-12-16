Rails.application.routes.draw do
  devise_for :users
  root to: "events#index"
  get 'events/search'
  resources :events, only: [:new, :create, :show, :destroy, :edit, :update] do
    resources :comments, only: :create
    member do
      post "add", to: "favorites#create"
      get "show_favorites" => "favorites#show_favorites"
    end
    collection do
      get 'search_tag'
    end
  end
  resources :users, only: :show 
  resources :favorites, only: [:destroy, :index]
end
