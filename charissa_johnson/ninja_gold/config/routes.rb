Rails.application.routes.draw do
  get 'rpg' => 'rpg#index'
  post 'reset' => 'rpg#reset'
  post 'process_money' => 'rpg#process_money'
end
