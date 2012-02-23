class StoreController < ApplicationController
  def index
  	@products = Product.search(params)
  end

end
