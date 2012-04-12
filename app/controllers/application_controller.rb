class ApplicationController < ActionController::Base
	before_filter :authorize
  protect_from_forgery




protected

#authorizes all pages within the application to ensure the 
#user exists in the database. There is a whitelist filter
#called skip_before_filter :authorize for skipping actions
#related to this authorization. 
  def authorize
    unless User.find_by_id(session[:user_id])
      redirect_to login_url, :notice => "Please log in"
    end
  end
end
