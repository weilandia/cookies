class ItemsController < ApplicationController
  def index
    session[:hit_counter] = session[:hit_counter].to_i + 1
    if session[:hit_counter].to_i.even?
      flash.now[:alert] = "Hit counter is even."
    else
      flash.now[:message] = "Hit counter is odd."
    end
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id].to_i)
  end
end
