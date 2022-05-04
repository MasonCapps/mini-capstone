Rails.application.routes.draw do
  get "/all_products", controller: "products", action: "display_products"
end
