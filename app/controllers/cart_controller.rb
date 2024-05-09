class CartController < ApplicationController
  def index
    @cart = Item.all
    render :index
  end

  def show
    @cart = current_cart
   end

   def add_to_cart
    current_cart.add_item(params[:prebuilt_id])
    redirect_to cart_path(current_cart.id)
    flash[:success] = 'Item successfully updated!'
  end
end
