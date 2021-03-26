class ShopController < ApplicationController
  def index
    @records = Record.all

 #   @order_itemlist = current_order_itemlist.order_itemlists.new
  end

  def show
    @records = Record.find(params[:id])
  end
end
