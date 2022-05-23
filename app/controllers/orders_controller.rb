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
    user = User.find_by(id: current_user[:id])
    users_carted_products = user.carted_products
    currently_carted = users_carted_products.select do |instance|
      instance[:status] == "carted"
    end
    orders = []
    currently_carted.each do |instance|
      price = instance.product.price
      order = Order.new(
        user_id: current_user.id,
        subtotal: price,
        tax: price * 0.09,
        total: price + (price * 0.09),
      )
      order.save
      orders << order
      instance[:order_id] = order[:id]
      instance[:status] = "purchased"
      instance.save
    end
    render json: orders.as_json
  end
end
