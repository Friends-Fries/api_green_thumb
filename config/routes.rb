Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # list_cities GET  /cities(.:format) cities#index
  jsonapi_resources :cities
end
