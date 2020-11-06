class ItemsController < ApplicationController
  
  def index
    @items=Item.includes(:user).order("created_at DESC")
  end
  
  def new
    @item=Item.new
  end
  
  def create
    @item=Item.new(item_params)
    if @item.valid?
       @item.save
       redirect_to root_path
     else
       render :new
    end
  end

  def show
    
    @item=Item.find(params[:id])
  end



  private

  def item_params
    params.require(:item).permit(:name,:prefecture_id,:condition_id,:delivery_date_id,:price,:internal_capacity,:manufacturer,:image).merge(user_id: current_user.id)
  end
end
