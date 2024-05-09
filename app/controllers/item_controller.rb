class ItemController < ApplicationController
  before_action :authenticate_user!

  def add_custom_to_cart
    @custom = Custom.find(params[:id])
    @item = Item.new(item_type: 'Custom', id_of_jet: @custom.id)

    if @item.save
      flash[:success] = "New item added to cart"
      redirect_to customs_url
    else
      flash[:error] = 'Add to cart failed'
      redirect_to customs_url
    end
  end

  def add_prebuilt_to_cart
    @prebuilt = Prebuilt.find(params[:id])
    @item = Item.new(item_type: 'Prebuilt', id_of_jet: @prebuilt.id)

    if @item.save
      flash[:success] = "New item added to cart"
      redirect_to prebuilts_url
    else
      flash[:error] = 'Add to cart failed'
      redirect_to prebuilts_url
    end
  end
end
