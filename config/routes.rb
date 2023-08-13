Rails.application.routes.draw do
  devise_for :admins
  devise_for :users

  namespace :admin do
    root "dashboard#index"
  end
  resources :tests
  resources :products
  resources :tasks
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "welcome#index"
  get "/:locale", to: "welcome#index"
end
