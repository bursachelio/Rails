Rails.application.routes.draw do
  get 'static_pages/about'
  get 'static_pages/author'
  root "static_pages#about"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
