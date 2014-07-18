class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def show
    @user = User.find_by_id(params['id'])
  
  end
  
  def new 
  end
  
  def create
    u = User.new
    u.name = params['User Name']
    u.image_url = params['Image URL']
    u.description = params['Bio']
    u.save
    redirect_to "/users/#{u.id}"
  end

  
end
