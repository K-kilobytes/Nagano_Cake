class Public::ItemsController < ApplicationController

  def index
    #@items = Item.page(params[:page])ページネイション
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
  end


  private

  def item_params
    params.require(:item).permit(:name, :image, :description, :unit_price)
  end
end
