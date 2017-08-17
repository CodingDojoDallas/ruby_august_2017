class ControllersController < ApplicationController

    def say
        render text: "What do you want me to say???"
    end

    def hello
        render text: "Hello CodingDojo!"
    end

    def sayHello
        render text: "Saying Hello!"
    end

    def joe
        render text: "Saying Hello Joe!"
    end

    def michael
        redirect_to "/say/hello/joe"
    end

    def times
        session[:times] ||= 0

        @times = session[:times] += 1

        render text: "You have visited the page #{session[:times]} time(s)"

    end

    def restart
        session[:times] = nil
        redirect_to "/times"
    end
end
