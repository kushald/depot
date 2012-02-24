class StoreController < ApplicationController
  def index
  	@products = Product.search(params[:search])
		@cart = current_cart
  end

end
