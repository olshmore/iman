class SellableGoodsController < ApplicationController
  def all
    @goods = SellableGood.all

    respond_to do |format|
      format.html
      format.json { render json: @goods }
    end
  end

  def show
    @product = SellableGood.find(params[:id])
  end
end
