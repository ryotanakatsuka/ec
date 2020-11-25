class TopicsController < ApplicationController
  def index
    @item=Item.where(condition_id:2).or(Item.where(condition_id:3))

  end
end
