Rails.application.routes.draw do
  get "hello" => "hello#hello"
  get "say/hello" => "hello#sayHello"
  get "say/hello/joe" => "hello#sayHelloJoe"
  get "say/hello/michael" => "hello#sayHelloMichael"
  get "times" => "hello#times"
  get "restart" => "hello#restart"
  get "" => "hello#index"
end
