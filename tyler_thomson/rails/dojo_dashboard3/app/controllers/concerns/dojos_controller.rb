class DojosController < ApplicationController
  def index
    @dojos = []
    @dojos = Dojo.all
  end

  def new
  end

  def create
    if(dojo.valid?)
      @dojo = Dojo.create(dojo_params)
      return redirect_to '/'
    else
      flash[:error] = dojo.errors.full_messages
    end
  end

  def show
    @dojo = Dojo.find(params[:id])
  end

  def edit
    @dojo = Dojo.find(params[:id])
  end

  def update
    @dojo = Dojo.find(params[:id])
    @dojo.update(dojo_params)
    return redirect_to '/'
  end

  def destroy
    dojo = Dojo.find(params[:id])
    dojo.destroy
    redirect_to '/'
  end

  private
    def dojo_params
      params.require(:dojo).permit(:name, :street, :city, :state)
    end
end
