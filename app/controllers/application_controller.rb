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
    if u.save
    redirect_to "/users/#{u.id}" #ruby string interpolation is required here to access the u.id variable
    else render 'new'
    end
  end
  
  def edit
    @user = User.find_by_id(params['id'])
  end
  
  def update
    u = User.find_by_id(params['id'])
    u.name = params['user']
    u.image_url = params['image']
    u.description = params['bio']
    if u.save
    redirect_to "/users/#{u.id}" #ruby string interpolation is required here to access the u.id variable
    else
      redirect_to 'users/#{u.id}/update'
    end
  end
  
  def destroy
    u = User.find_by_id(params['id'])
    u.destroy
    redirect_to "/users"
  end
  
  def index
    @users = User.all
  end

  
end
