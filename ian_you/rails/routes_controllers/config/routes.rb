Rails.application.routes.draw do
  get ''=> "routes#index"
  get 'hello' => "routes#hello"
  get 'say/hello/(:name)' => "routes#say"
  get 'times' => "routes#times"
  get 'times/restart' => "routes#reset"

end
