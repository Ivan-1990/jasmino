class ProductsController < ApplicationController
  def index
    @products = Product.all
    shopping_cart_id = session[:shopping_cart_id]
    @shopping_cart = session[:shopping_cart_id]
  end
  
  def show
  	@product = Product.find(params[:id])
  end
  
  def new
  	@product = Product.new
  	respond_to do |format|
  	  format.html # new.html.erb
  	  format.json { render json: @post }
  	end
  end
  
  def create
  	@product = Product.create(params[:product])
  	redirect_to product_path(@product)
  end
  
end
