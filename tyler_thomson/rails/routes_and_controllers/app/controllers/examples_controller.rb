class ExamplesController < ApplicationController
  session[:count] = 0
  def index
    return render text: "What do you want me to say?"
  end
  def home
    return render text: "Hello CodingDojo!"
  end
  def hello
    return render text: "Saying hello"
  end
  def joe
    return render text: "Saying Hello Joe"
  end
  def michael
    return redirect_to '/say/hello/joe'
  end
  def count
    session[:count] += 1
    return render text: "You visited this url #{1} time(s)"
  end
  def restart
    session[:count] = 0
    return render text: "Destroyed the session!"
  end
end
