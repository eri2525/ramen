class ShopsController < ApplicationController
  before_action :set_target_shop, only: [:show, :edit, :update, :destroy]

  def index
    @shops = Shop.page(params[:page]).per(10)
  end

  def new
    @shop = Shop.new
  end

  def create
    shop = Shop.new(shop_params)
    if shop.save
      flash[:notice] = "「#{shop.name}」を登録しました"
      redirect_to shop
    else
      redirect_to new_shop_path, flash: {
        shop: shop,
        error_messages: shop.errors.full_messages
      }
      
    end
  end

  def show
    @comment = @shop.comments.new
  end

  def edit
  end

  def update
    @shop.update(shop_params)

    redirect_to shop
  end

  def destroy
    @shop.delete

    redirect_to shops_path, flash: {notice: "「#{@shop.name}」が削除されました"}
  end

  private
  def shop_params
    params.require(:shop).permit(:name, :image, :text)
  end

  def set_target_shop
    @shop = Shop.find(params[:id])
  end
end
