class UsersController < ApplicationController
  def index
  end

  def new
  end

  def create
      @user = User.new(user_params)

      if (@user.valid?)
          @user.save
          session[:user_id] = @user.id
          redirect_to "/users/#{@user.id}"

      else
          flash[:errors] = @user.errors.full_messages
          redirect_to '/register'
      end
  end

  def show
      @user = User.find(session[:user_id])
  end

  private
    def user_params
        params.require(:user).permit(:name, :email, :password)
    end

end
