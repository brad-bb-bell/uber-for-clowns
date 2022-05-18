class OrdersController < ApplicationController
  def index
    @orders = Order.all
    render template: "orders/index"
  end

  def show
    @order = Order.find_by(id: params["id"])
    p @order
    render template: "orders/show"
  end
end
