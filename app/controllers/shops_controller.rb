class ShopsController < ApplicationController
  before_action :set_target_shop, only: [:show, :edit, :update, :destroy]

  def index
    @shops = Shop.all
  end

  def new
    @shop = Shop.new
  end

  def create
    shop = Shop.create(shop_params)
    redirect_to shop
  end

  def show
  end

  def edit
  end

  def update
    @shop.update(shop_params)

    redirect_to shop
  end

  def destroy
    @shop.delete

    redirect_to shops_path
  end

  private
  def shop_params
    params.require(:shop).permit(:name, :image, :text)
  end

  def set_target_shop
    @shop = Shop.find(params[:id])
  end
end
