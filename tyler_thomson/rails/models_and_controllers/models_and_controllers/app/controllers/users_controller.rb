class UsersController < ApplicationController
  @count = 0
  def index
    return render json: User.all
  end

  def new
    return render 'new'
  end

  def create
    @user = User.create( name:params[:name] )
    return redirect_to '/users'
  end

  def show
    return render json: User.first
  end

  def update
    return render 'edit'
  end

  def total
    User.all.each do |user|
      @count ++
    end
    render text: "Number of users is: #{@count}"
  end
end
