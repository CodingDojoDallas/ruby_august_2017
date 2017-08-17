Rails.application.routes.draw do
  get 'dojos/index'
  post 'dojos' => 'dojos#create'
  get 'dojos/form' => 'dojos#form'
  get '' => 'dojos#index'
end
