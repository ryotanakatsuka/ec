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
  
  private

  def new_params
    params.require(:new).permit(:text,:image,:title).merge(user_id: current_user.id)
  end
end
