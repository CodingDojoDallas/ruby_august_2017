class UsersController < ApplicationController
  before_action :require_login, only: [:show]
  before_action :auth, only: [:show]

  def index
    return render "users/index"
  end

  def new
    return render "users/new"
  end

  def create
  	@user = User.new(user_params)
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

    def auth
      return redirect_to "/users/#{current_user.id}" unless current_user.id == params[:id].to_i
    end
end
