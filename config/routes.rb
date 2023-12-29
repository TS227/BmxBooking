Rails.application.routes.draw do
  devise_for :users
  resources :events do
    resources :slots
  end
  resources :slots_users, only: [:create, :destroy]
  get 'contact-us', to: 'home#contact'
  get 'about-us', to: 'home#about'
  root 'home#index'
end
