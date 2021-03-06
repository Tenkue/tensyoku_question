Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  root to: 'toppage#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :toppage, only: :index
  resources :posts
  resources :users, only: [:show,:edit,:update]
end
