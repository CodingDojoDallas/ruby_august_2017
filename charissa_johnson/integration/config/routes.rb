Rails.application.routes.draw do
  get "users" => "users#index"

  get "users/new" => "users#new"

  get "users/:id" => "users#show"

  get "users/:id/edit" => "users#edit"

  post "users" => "users#create"
  
  get "users/total" => "users#total"

end