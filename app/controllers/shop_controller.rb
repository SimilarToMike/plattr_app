class ShopController < ApplicationController
  def index
    @records = Record.all
  end

  def show
    @records = Record.find(params[:id])
  end
end
