class OrdersController < ApplicationController
  before_action :authenticate_user

  def index
    @orders = current_user.orders
    render template: "orders/index"
  end

  def show
    @order = current_user.orders.find_by(id: params[:id])
    render template: "orders/show"
  end

  def create
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
  end
end
