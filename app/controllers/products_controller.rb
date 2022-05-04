class ProductsController < ApplicationController
  def display_products
    all_products = Product.all
    render json: { Products: all_products }
  end
end
