class UsersController < ApplicationController
	
	def create
		@user = User.new(params[:user])

		if @user.save
			session[:user_id] = @user.id

			redirect_to user_path(@user.id)
		else
			root_url
		end
	end

	def show
		if current_user
			@user = current_user
			@creation = Creation.new

			3.times do
			    @question = @creation.questions.build
			    2.times { @question.options.build }
			 end


		else
			redirect_to root_url
		end
	end

end
