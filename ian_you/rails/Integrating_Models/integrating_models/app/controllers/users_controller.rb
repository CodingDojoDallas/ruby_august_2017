class UsersController < ApplicationController
    def index
        
        render json: User.all
    end

    def new
        render 'users/new.html.erb'
    end

    def create
        User.create(name:params[:name], age:params[:age])
        redirect_to '/users'
    end

    def show
        p params[:id]
        render json: User.find(params[:id])
    end

    def edit
        @user = User.find(params[:id])

        render 'users/edit.html.erb'
    end

    def total
        @users = User.all
        render text: @users.length
    end
end
