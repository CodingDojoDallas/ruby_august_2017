class DojosController < ApplicationController
  def index
    @dojos = []
    @dojos = Dojo.all
  end

  def new
  end

  def create
    @dojo = Dojo.create(dojo_params)
    return redirect_to '/'
  end

  private
    def dojo_params
      params.require(:dojo).permit(:name, :street, :city, :state)
    end
end
