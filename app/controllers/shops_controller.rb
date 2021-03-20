class ShopsController < ApplicationController
  before_action :set_target_shop, only: [:show, :edit, :update, :destroy]

  def index
    @shops = params[:tag_id].present? ? Tag.find(params[:tag_id]).shops : Shop.all
    @shops = @shops.page(params[:page]).per(10)
  end

  def new
    @shop = Shop.new(flash[:shop])
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
    @comment = Comment.new(shop_id: @shop.id)
  end

  def edit
  end

  def update
    if @shop.update(shop_params)
      redirect_to @shop
    else
      redirect_to edit_shop_path, flash: {
        shop: @shop,
        error_messages: @shop.errors.full_messages
      }
    end
  end

  def destroy
    @shop.destroy
    redirect_to shops_path, flash: {notice: "「#{@shop.name}」が削除されました"}
  end

  private
  def shop_params
    params.require(:shop).permit(:name, :text, tag_ids:[], images:[])
  end

  def set_target_shop
    @shop = Shop.find(params[:id] )
  end
end
