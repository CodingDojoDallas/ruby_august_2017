class DojosController < ApplicationController
  def index
  	session[:count] ||= 0
  end

  def create
  	session[:count] += 1
  	@dojo = Dojo.create(name: params[:name], dojo: params[:dojo], language: params[:language], comment: params[:comment])

    session[:current_user] = @dojo.id

  	flash[:success] = "Thanks for submitting this form #{session[:count]} times now"

  	redirect_to '/dojos/form'
  end

  def form
  	@current_user = Dojo.find_by_id(session[:current_user])
  end
end
