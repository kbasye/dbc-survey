class SessionsController < ApplicationController


  def create
    @user = User.find_by_username(params[:username])

    if @user.password = params[:password]
      session[:user_id] = @user.id

      redirect_to user_path(@user.id)    
    else

      redirect_to root_url
    end
  end


	def destroy
		session.clear
		redirect_to root_url
	end
	
end
