Rails.application.routes.draw do

  get 'users/new_user' => 'application#new'
  get 'users/create_user' => 'application#create'
  get 'users/:id'=> 'application#show'
  
end
