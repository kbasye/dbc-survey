class ApplicationController < ActionController::Base
  protect_from_forgery
	helper_method :current_user
  

  def index
  	if current_user
      @user = User.new
  		redirect_to user_path(current_user.id)
  	else
      @user = User.new

      render 'index'
    end
  	@user = User.new
  end

  private

  def current_user
 	 @current_user ||= User.find(session[:user_id]) if session[:user_id]
	end

end
