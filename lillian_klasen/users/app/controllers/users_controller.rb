class UsersController < ApplicationController

    def users
        render json: User.all
    end

    def create
        @user = User.create( user_params)
        redirect_to "/users"
    end

    def new
    end

    def show
        render json: User.first
    end

    def total
        @total = User.all.length
        render text: "Total users: #{@total}"
    end

    def edit
    end

    private
        def user_params
            params.require(:user).permit(:name)
        end
end
