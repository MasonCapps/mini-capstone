class OrdersController < ApplicationController
  def index
    user_orders = current_user.orders
    render json: user_orders.as_json
  end

  def show
    order = current_user.orders.find_by(id: params[:id])
    render json: order.as_json
  end

  def create
    if current_user
      product = Product.find_by(id: params[:product_id])
      order = Order.new(
        user_id: current_user.id,
        product_id: params[:product_id],
        quantity: params[:quantity],
        subtotal: product.price * params[:quantity],
        tax: product.tax * params[:quantity],
        total: product.total * params[:quantity],
      )
      order.save
      render json: order.as_json
    else
      render json: { message: "You must be logged in to create an order." }
    end
  end
end
