Rails.application.routes.draw do
  get "/all_products", controller: "products", action: "display_products"

  get "/product", controller: "products", action: "single_product"
end
