Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  root to: 'toppage#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :toppage, only: :index
<<<<<<< HEAD
  resources :posts, except: :index
  resources :users, only: [:show,:edit,:update]
=======
  resources :posts
  resources :users, only: :show
>>>>>>> origin/master
end
