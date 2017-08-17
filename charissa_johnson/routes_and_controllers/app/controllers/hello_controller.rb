class HelloController < ApplicationController
	def index
		return render text: "What do you want me to say?"
	end

	def hello
		return render text: "Hello"
	end

	def sayHello
		return render text: "Saying hello!"
	end

	def sayHelloJoe
		return render text: "Saying hello Joe!"
	end

	def sayHelloMichael
		return redirect_to "/say/hello/joe" 
	end

	def times
		session[:count] ||= 0
		session[:count] += 1
		return render text: "Count is currently: #{session[:count]}"
	end

	def restart
		session[:count] = 0
		return render text: "Destroyed the session!"
	end
end