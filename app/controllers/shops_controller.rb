class ShopsController < ApplicationController
  def index
    @shops = Shop.all
  end

  def new
    @shop = Shop.new
  end

  def create
    Shop.create(shop_params)
  end

  def show
    @shop = Shop.find(params[:id])
  end

  def edit
    @shop = Shop.find(params[:id])
  end

  def update
    shop = Shop.find(params[:id])
    shop.update(shop_params)

    redirect_to shop
  end

  private
  def shop_params
    params.require(:shop).permit(:name, :image, :text)
  end
end
