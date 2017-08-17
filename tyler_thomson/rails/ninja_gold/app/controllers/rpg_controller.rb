class RpgController < ApplicationController

  def index
    session[:gold] ||= 0; session[:activities] ||= []
    @gold = session[:gold]; @activities = session[:activities]
  end

  def farm
    @gold = rand(10..20)
    session[:gold] += @gold
    session[:activities] << "Earned #{@gold} from the #{params[:building]}"
    return redirect_to ''
  end

  def cave
    @gold = rand(5..10)
    session[:gold] += @gold
    session[:activities] << "Earned #{@gold} from the #{params[:building]}"
    return redirect_to ''
  end

  def home
    @gold = rand(2..5)
    session[:gold] += @gold
    session[:activities] << "Earned #{@gold} from the #{params[:building]}"
    return redirect_to ''
  end

  def casino
    @gold = rand(-50..50)
    session[:gold] += @gold
    session[:activities] << "Earned #{@gold} golds from the #{params[:building]}" if @gold >= 0
    session[:activities] << "Lost #{@gold * -1} golds at the #{params[:building]}" if @gold < 0
    return redirect_to ''
  end

  def reset
    session[:gold] = 0; session[:activities] = []
    return redirect_to ''
  end
end
