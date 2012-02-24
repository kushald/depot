class StoreController < ApplicationController
  def index
  	@products = Product.search(params[:search])
  end

end
