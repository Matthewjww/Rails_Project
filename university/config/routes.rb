Rails.application.routes.draw do
  root 'prefixes#index'
  resources :sections
  resources :semesters
  resources :prefixes
  resources :people
  resources :courses
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
