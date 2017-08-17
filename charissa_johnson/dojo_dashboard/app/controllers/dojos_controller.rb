class DojosController < ApplicationController
  def index
  	@dojos = Dojo.all 
  end

  def new
  end

  def create
  	Dojo.create(dojo_info)

  	redirect_to '/dojos'
  end

  def show
  	@dojo = Dojo.find(params[:id])
    @students = @dojo.students
  end

  def edit
  	@dojo = Dojo.find(params[:id])
  end

  def update
  	dojo = Dojo.find(params[:id])
  	dojo.update(dojo_info)

  	redirect_to '/dojos'
  end

  def destroy
  	dojo = Dojo.find(params[:id])
  	dojo.destroy
  	redirect_to '/dojos'
  end

  private 
  	def dojo_info
  		params.require(:dojo_info).permit(:branch, :street, :city, :state)
  	end

end