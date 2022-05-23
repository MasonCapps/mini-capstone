class CartedProductsController < ApplicationController
  def index
    @carted_products = CartedProduct.all
    render template: "carted_products/index"
  end

  def create
    carted_product = CartedProduct.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      status: "carted",
      order_id: nil,
    )
    carted_product.save
    render json: carted_product.as_json
  end

  def destroy
    carted_product = CartedProduct.find_by(id: params[:id])
    carted_product[:status] = "removed"
    carted_product.save
    render json: carted_product.as_json
  end
end
