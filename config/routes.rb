Rails.application.routes.draw do

  get '/users/new_user' => 'application#new'
  get '/users/create_user' => 'application#create'
  get '/users/:id'=> 'application#show'
  get '/users/:id/edit' => 'application#edit'
  get '/users/:id/destroy' => 'application#destroy'
  get '/users/:id/update'=> 'application#update'
  
end
