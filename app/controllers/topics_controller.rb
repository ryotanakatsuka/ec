class TopicsController < ApplicationController
  
  def index
    @item=Item.where(condition_id:2)
  end

  def brown_rice
    @item=Item.where(condition_id:3)
  end

  def sticky_rice
    @item=Item.where(condition_id:4)
  end

  def sake_lees
    @item=Item.where(condition_id:5)
  end
end
