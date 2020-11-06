class OrdersController < ApplicationController

  def new
    @item=Item.find(params[:item_id])
    @order=Order.new
  end
  
  def create
    @order=Order.new(order_params)
    if @order.valid?
      @order.save
      redirect_to root_path
    else
      render :new
    end
  end


  private
  def order_params
    params.require(:order).permit(:user_id,:item_id).merge(user_id: current_user.id,item_id: params[:item_id])
  end
end
