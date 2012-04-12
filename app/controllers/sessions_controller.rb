class SessionsController < ApplicationController
  skip_before_filter :authorize
  def new
  end

#We need to store something in session to say that an admin
#is logged in.
  def create
  	if user = User.authenticate(params[:username], params[:password])
  		session[:user_id] = user.id
  		redirect_to admin_url
  	else
  		redirect_to login_url, :alert => "Invalid user/password combination"
  	end
  end

  def destroy
  	session[:user_id] = nil
  	redirect_to homes_url, :notice => "Logged out"
  end
end
