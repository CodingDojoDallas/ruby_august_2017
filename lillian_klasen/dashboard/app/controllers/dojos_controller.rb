class DojosController < ApplicationController
  def index
      @dojos = Dojo.all
  end

  def new
  end

  def create
      dojo = Dojo.new(dojo_params)
      if (dojo.valid?)
          dojo.save
          flash[:success] = "Dojo succesfully created!"
          redirect_to '/'
      else
          flash[:error] = dojo.errors.full_messages
          redirect_to '/dojos/new'
      end
  end

  def show
      @dojo = Dojo.find(params[:id])
  end

  def edit
      @dojo = Dojo.find(params[:id])
  end

  def update
      dojo = Dojo.find(params[:id])
      dojo.street = params[:street]
      dojo.city = params[:city]
      dojo.state = params[:state]
      dojo.save
      redirect_to '/'
  end

  def destroy
      dojo = Dojo.find(params[:id])
      dojo.destroy
      redirect_to '/'
  end

  private
    def dojo_params
        params.require(:dojo).permit(:branch, :street, :state, :city)
    end
end
