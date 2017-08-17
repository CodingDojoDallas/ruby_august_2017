class ProductsController < ApplicationController
  def index
      @products = Products.all
  end

  def create
      @product = Product.create( name:params[:name], description: params[:description])
      redirect_to '/products/index'
  end
end
