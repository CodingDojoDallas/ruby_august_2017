class UsersController < ApplicationController
  def index
  end

  def create
      user = User.new(
        first_name: params[:first_name],
        last_name: params[:last_name],
        email: params[:email])

      if (user.valid?)
          user.save
          session[:user] = user.id
          redirect_to '/users/messages'
      else
          flash[:errors] = user.errors.full_messages
          redirect_to '/users'
      end
  end
end
