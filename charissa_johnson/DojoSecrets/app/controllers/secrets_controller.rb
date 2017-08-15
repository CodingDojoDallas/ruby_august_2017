class SecretsController < ApplicationController
  def index
  	@secrets = Secret.all 
  end

  def create
  	@secret = Secret.new(secret_params)
    @secret.user = current_user
  	if @secret.save
  		redirect_to :back
  	else
  		flash[:errors] = @secret.errors.full_messages
  		redirect_to :back
  	end
  end

  def destroy
  	secret = Secret.find(params[:id])
  	secret.destroy if secret.user == current_user
  	redirect_to :back
  end

  private
  	def secret_params
  		params.require(:secret).permit(:content, :user_id)
  	end
end
