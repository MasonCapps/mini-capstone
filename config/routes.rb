Rails.application.routes.draw do
  post "/products" => "products#create"

  patch "/products/:id" => "products#update"

  delete "/products/:id" => "products#destroy"

  get "/products" => "products#index"

  get "/products/:id" => "products#show"
end
