Rails.application.routes.draw do
  resources :categories

  devise_for :admins
  devise_for :users

  namespace :admin do
      resources :products
    resources :categories
    root "dashboard#main_page"
  end
  resources :tests
  resources :tasks

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "welcome#index"
  #get "/:locale", to: "welcome#index"
end
