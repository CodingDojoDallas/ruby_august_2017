class RoutesController < ApplicationController
  def index
    return render text: "What do you want me to say?"
  end
  def hello
    return render text: 'Hello Coding Dojo'
  end

  def say
    @name = params[:name] || ""
    if @name == 'michael'
      return redirect_to '/say/hello/joe'

    elsif @name == ""
      return render text: "Saying Hello!"
    end

    @name.capitalize!
    return render text: "Saying Hello #{@name}!"
  end

  def times
    @count = session[:count] ||= 1
    session[:count] += 1

    return render text: "You visited this url #{@count} time"
  end

  def reset
    session[:count] = nil
    return render text: "Destroyed the session"
  end
end
