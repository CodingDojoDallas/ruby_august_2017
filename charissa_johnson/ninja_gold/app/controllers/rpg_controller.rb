class RpgController < ApplicationController
  def index
  	session[:gold] ||= 0
    session[:activities] ||= []
    @activities = session[:activities]
  	@gold = session[:gold]
  end

  def process_money
    building = params[:building]

    if building == 'farm'
      session[:gold] += rand(10..20)
    end

    if building == 'cave'
      session[:gold] += rand(5..10)
    end

    if building == 'house'
      session[:gold] += rand(2..5)
    end

    if building == 'casino'
      session[:gold] += rand(-50..50)
    end

    session[:activities] << "Earned #{@gold} from the #{params[:building]}!"

    return redirect_to '/rpg'
  end

  def reset
  	session[:gold] = 0
  	return redirect_to '/rpg'
  end
end
