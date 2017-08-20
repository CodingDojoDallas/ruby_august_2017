class MessagesController < ApplicationController
  def index
     @user = User.find(session[:user])
     @messages = Message.all
     @posts = Post.all
  end

  def create
      user = User.find(session[:user])
      message = Message.new(message_params)
      message.user = user

      if (message.valid?)
         message.save
         session[:message] = message.id
         redirect_to '/users/messages'
     else
         flash[:errors] = message.errors.full_messages
         redirect_to '/users/messages'
     end

  end

  private
    def message_params
        params.require(:message).permit(:content)
    end
end
