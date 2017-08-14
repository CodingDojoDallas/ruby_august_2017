class UsersController < ApplicationController
  def new
  end

  def create
  	@user = User.new user_params
  	if @user.save
  		redirect_to "/sessions/new"
  	else
  		flash[:errors] = @user.errors.full_messages
  		redirect_to "/users/new"
  	end
  end

  def show
  	@user = User.find(params[:id])
  end

  def edit
  	@user = User.find(params[:id])
  end

  def update
  	user = User.find(params[:id])
  	user.update(user_params)
  	session[:name] = user.name
  	if user.save
  		redirect_to "/users/#{user.id}"
  	else
  		flash[:errors] = user.errors.full_messages
  		redirect_to "/users/#{user.id}/edit"
  	end
  end

  def destroy
  	user = User.find(params[:id])
  	user.destroy
  	session.clear
  	redirect_to '/sessions/new'
  end

  private 
  	def user_params
  		params.require(:user).permit(:name, :email, :password, :password_confirmation)
  	end
end
