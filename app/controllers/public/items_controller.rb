class Public::ItemsController < ApplicationController
  def index
    @item = Item.new
    @items = Item.all
  end
  def show
    @item = Item.find(params[:id])
    @user = User.find(@Item.user_id)
    @Itemn = Item.new
  end
end
