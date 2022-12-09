Rails.application.routes.draw do
  root 'accounts#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :accounts
  # Defines the root path route ("/")
  # root "articles#index"
end
