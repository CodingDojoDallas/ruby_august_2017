class RpgController < ApplicationController
    def index
        session[:money] ||= 0
        session[:activities] ||= []
        @activities = session[:activities]

    end

    def process_money
        building_type = params[:building]

        if building_type == 'farm'
            add_gold = Random.new.rand(10..20)
            session[:money] += add_gold

        end

        if building_type == 'cave'
            add_gold = Random.new.rand(5..10)
            session[:money] += add_gold
        end

        if building_type == 'house'
            add_gold = Random.new.rand(2..5)
            session[:money] += add_gold
        end

        if building_type == 'casino'
            add_gold = Random.new.rand(-50..50)
            session[:money] += add_gold
        end

        session[:activities] << "Earned #{add_gold} from the #{params[:building]}!"

        redirect_to '/'
    end

end
