class UsersController < ApplicationController
  def index
  end

  def create
      @user = User.create(user_params)

      session[:current_user] = @user.id

      redirect_to "/show"
  end

  def show
      @current_user = User.find_by_id(session[:current_user])

      session[:times] ||= 0
      @times = session[:times] += 1

       flash[:success] = "Thanks for submitting this form! You have submitted this form  #{session[:times]} times now."
  end

  private
    def user_params
        params.require(:user).permit(:name, :location, :language, :comment)
    end
end
