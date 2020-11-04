Rails.application.routes.draw do
  root 'event#index'
  get 'static_pages/secret'
  devise_for :users
  resources :event
  resources :user, only: [:show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
