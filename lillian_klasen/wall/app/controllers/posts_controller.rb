class PostsController < ApplicationController
  def create
      user = User.find(session[:user])
      message = Message.find(session[:message])

      post = Post.new(post_params)

      post.user = user
      post.message = message

      if (post.valid?)
         post.save
         redirect_to '/users/messages'
     else
         flash[:errors] = post.errors.full_messages
         redirect_to '/users/messages'
     end
  end

  private
    def post_params
        params.require(:post).permit(:content)
    end
end
