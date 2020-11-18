class NewsController < ApplicationController
  
  def index
    
  end

  def new
    @new=New.new
  end
  
  def create
    @new=New.create(new_params)
    if @new.valid?
      @new.save
      redirect_to root_path
    else
      render :new
    end
  end
  
  def show
    @new=New.find(params[:id])
  end

  def edit
    @new=New.find(params[:id])
  end

  def update
    @new=New.find(params[:id])
    if @new.update(new_params)
      redirect_to root_path      
    else
      render :edit
    end
  end
  
  private

  def new_params
    params.require(:new).permit(:text,:image,:title).merge(user_id: current_user.id)
  end
end
