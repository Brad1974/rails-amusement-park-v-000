Rails.application.routes.draw do

resources :users
get '/login' => 'sessions#new'
post '/sessions' => 'sessions#create'
root 'sessions#home'
get '/signin', :to => "users#signin"
post '/users/login', :to => "users#show"
get '/logout' => 'sessions#destroy'
resources :attractions
resources :rides

end
