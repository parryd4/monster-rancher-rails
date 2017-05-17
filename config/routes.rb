Rails.application.routes.draw do
#  root 'application#hello'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'


  get '/town', to: 'locations#town'
  get '/market', to: 'locations#market'
  post '/market', to: 'monsters#create_market'
  get '/lab', to: 'locations#lab'
end
