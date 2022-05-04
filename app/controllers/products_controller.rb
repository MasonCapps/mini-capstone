class ProductsController < ApplicationController
  def index
    all_products = Product.all
    render json: all_products.as_json
  end

  def show
    product = Product.find_by(id: params["id"])
    render json: product.as_json
  end
end
