class OrdersController < ApplicationController

  def new
    @item=Item.find(params[:item_id])
    @order=Order.new
  end
  
  def create
    @order=Order.new(order_params)
    @item=Item.find(params[:item_id])
    if @order.valid?
      pay_item
      @order.save
      redirect_to root_path
    else
      render :new
    end
  end


  private
  def order_params
    params.permit(:user_id,:item_id).merge(user_id: current_user.id,item_id: params[:item_id],token: params[:token])
  end

  def pay_item
    Payjp.api_key = ENV["PAYJP_SECRET_KEY"] 
      Payjp::Charge.create(
        amount: @item.price,  
        card: order_params[:token],    
        currency: 'jpy'                
      )
  end
end
