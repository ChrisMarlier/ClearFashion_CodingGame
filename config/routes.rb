Rails.application.routes.draw do
  root 'login#index'

  get '/fight' => 'fight#index'
  get '/login' => 'login#index'
  post '/login' => 'login#check'
  get '/disconnect' => 'login#disconnect'

  get '/linguiniView' => 'login#index'
  get '/chiefOfHapinessView' => 'login#index'

  post '/linguiniView' => 'fight#linguiniSubmited'
  post '/chiefOfHapinessView' => 'fight#chiefSubmited'
end
