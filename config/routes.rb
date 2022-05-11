Rails.application.routes.draw do
  get "/products/:id" => "products#show"

  get "/products" => "products#index"

  post "/products" => "products#create"

  patch "/products/:id" => "products#update"

  delete "/products/:id" => "products#destroy"

  get "/suppliers/:id" => "suppliers#show"

  get "/suppliers" => "suppliers#index"

  post "/suppliers" => "suppliers#create"

  patch "/suppliers/:id" => "suppliers#update"

  delete "/suppliers/:id" => "suppliers#destroy"
end
