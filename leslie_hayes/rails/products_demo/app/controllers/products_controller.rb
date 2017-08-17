class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def create
    # params tells the controller what to get: name, desc.
    @product = Product.create(name: params[:name], description: params[:description])

    #if valid

    redirect_to '/products'
  end

#   def show
#     render text: params[:id]
#   end
end
