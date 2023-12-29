Rails.application.routes.draw do
  devise_for :users
  resources :events do
    resources :slots
  end
  root 'home#index'
end
