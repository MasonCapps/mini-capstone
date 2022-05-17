Rails.application.routes.draw do
  # Product routes
  get "/products/:id" => "products#show"
  get "/products" => "products#index"
  post "/products" => "products#create"
  patch "/products/:id" => "products#update"
  delete "/products/:id" => "products#destroy"

  # Supplier routes
  get "/suppliers/:id" => "suppliers#show"
  get "/suppliers" => "suppliers#index"
  post "/suppliers" => "suppliers#create"
  patch "/suppliers/:id" => "suppliers#update"
  delete "/suppliers/:id" => "suppliers#destroy"

  # Order routes
  get "/orders" => "orders#index"
  get "/orders/:id" => "orders#show"
  post "/orders" => "orders#create"

  # Authentication routes
  post "/users" => "users#create"
  post "/sessions" => "sessions#create"
end
