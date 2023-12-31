Rails.application.routes.draw do
  devise_for :users
  resources :events do
    resources :slots
  end
  resources :slots_users, only: [:create, :destroy]
  get 'contact-us', to: 'home#contact'
  get 'about-us', to: 'home#about'
  get 'admin', to: 'home#admin'
  put 'give_admin/:id', to: 'home#give_admin', as: 'give_admin'
  put 'remove_admin/:id', to: 'home#remove_admin', as: 'remove_admin'
  get 'user/:id', to: 'home#user', as: 'user'
  root 'home#index'
end
