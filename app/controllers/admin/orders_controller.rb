class Admin::OrdersController < Admin::BaseController
  def index
    @orders = Order.all
  end

  def show
    @order = Order.find params[:id]
    @orders = @order.item_orders
  end

  def update
    item = Item.find(params[:id])
    item.update_attributes params[:order]
    redirect_to admin_order_path
  end
end