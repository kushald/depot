class ApplicationController < ActionController::Base
  protect_from_forgery
	before_filter :cart_setting
  
  private
  
   def current_cart
   	Cart.find(session[:cart_id])
   	rescue ActiveRecord::RecordNotFound
   		cart = Cart.create
   		session[:cart_id] = cart.id
   		cart
   end

	def cart_setting
		@cart = current_cart
	end
end
