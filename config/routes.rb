Rails.application.routes.draw do
  devise_for :users
  resources :events do
    resources :slots
  end
  resources :slots_users, only: [:create, :destroy]
  root 'home#index'
end
