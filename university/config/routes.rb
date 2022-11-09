Rails.application.routes.draw do
  resources :semesters
  resources :sections
  resources :prefixes
  resources :people
  resources :courses
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
