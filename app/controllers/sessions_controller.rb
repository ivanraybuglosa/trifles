class SessionsController < ApplicationController

  def new
    
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
      if user && user.authenticate(params[:session][:password])
        login user
        params[:session][:remember_me] == '1' ? remember(user) : forget(user)
        redirect_to root_url
      else
        flash[:notice] = 'Invalid User Credentials'
        render 'new'
      end
  end
  
  def destroy
    logout if logged_in?
    redirect_to root_path
  end
  
end
