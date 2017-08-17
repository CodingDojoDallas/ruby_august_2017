Rails.application.routes.draw do
  get 'times/main'

  get '' => 'times#main'
end
