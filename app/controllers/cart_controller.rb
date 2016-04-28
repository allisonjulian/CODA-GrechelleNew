class CartController < ApplicationController
  def add
  	# cookies["cart"] = ""
  	cookies["cart"] = Cart.add(cookies["cart"], Product.find(params[:id]))

  	# render json: { customer: @current_customer, cart: [params[:id]] }
  	# cookies["cart"] = { :value => Cart.add(cookies["cart"], params), :path => '/' }
  	redirect_to products_path
  end
end
