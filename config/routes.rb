Rails.application.routes.draw do
  devise_for :users
  root to: "events#index"
  resources :events, only: [:new, :create, :show, :destroy, :edit, :update] do
    collection do
      get 'search'
    end
    resources :comments, only: :create
  end
end
