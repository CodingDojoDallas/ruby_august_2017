Rails.application.routes.draw do
  post 'login' => 'sessions#create'
  get 'login' => 'sessions#new'
  delete 'logout' => 'sessions#destroy'

  root 'users#index'
  get 'users/:id' => 'users#show'
  get 'register' => 'users#new'
  post 'users' => 'users#create'

end
