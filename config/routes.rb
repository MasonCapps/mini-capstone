Rails.application.routes.draw do
  # Products routes
  get "/products/:id" => "products#show"
  get "/products" => "products#index"
  post "/products" => "products#create"
  patch "/products/:id" => "products#update"
  delete "/products/:id" => "products#destroy"

  # Suppliers routes
  get "/suppliers/:id" => "suppliers#show"
  get "/suppliers" => "suppliers#index"
  post "/suppliers" => "suppliers#create"
  patch "/suppliers/:id" => "suppliers#update"
  delete "/suppliers/:id" => "suppliers#destroy"

  # Authentication routes
  post "/users" => "users#create"
  post "/sessions" => "sessions#create"
end
