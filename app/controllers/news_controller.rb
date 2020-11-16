class NewsController < ApplicationController
  
  def index
    @news=New.all
  end

  def new
    @new=New.new
  end
end
