class ProductsController < ApplicationController
  def display_products
    all_products = Product.all
    render json: { Products: all_products }
  end

  def single_product
    product = Product.find_by(id: rand(1..3))
    render json: { Product: product }
  end
end
