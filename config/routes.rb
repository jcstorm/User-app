Rails.application.routes.draw do

  #create
  get '/users/new_user' => 'application#new'
  get '/users/create_user' => 'application#create'
  
  #read
  get '/users/:id'=> 'application#show'
  get '/users' => 'application#index'
  
  #update
  get '/users/:id/edit' => 'application#edit'
  get '/users/:id/update'=> 'application#update'
  
  #destroy
 get '/users/:id/destroy' => 'application#destroy'

  
end
