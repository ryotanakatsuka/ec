class NewsController < ApplicationController
  
  def index
    @news=New.includes(:new).order("create_at DESC")
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

  private

  def new_params
    params.require(:new).permit(:text,:image,:title).merge(user_id: current_user.id)
  end
end
