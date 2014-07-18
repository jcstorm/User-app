Rails.application.routes.draw do
  get 'users/:id'=> 'application#show'
  
end
