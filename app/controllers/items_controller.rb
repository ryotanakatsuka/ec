class ItemsController < ApplicationController
  before_action :authenticate_user!, except:[:index,:show]
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
  
  def edit
    @item=Item.find(params[:id])
  end
  
  def update
    @item=Item.find(params[:id])
    if @item.update(item_params)
      redirect_to item_path
    else
      render :edit
    end
  end
  
  def destroy
    #binding.pry
    @item=Item.find(params[:id])
    if @item.destroy
      redirect_to root_path
    else
      render :show
    end
  end
  
  
  

  private

  def item_params
    params.require(:item).permit(:name,:prefecture_id,:condition_id,:delivery_date_id,:price,:internal_capacity,:manufacturer,:image).merge(user_id: current_user.id)
  end
end
