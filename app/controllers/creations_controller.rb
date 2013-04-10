class CreationsController < ApplicationController
	
	def create
		if current_user
			@user = current_user
		end

		@creation = @user.creations.build(params[:creation])

		if @creation.save
			redirect_to creation_path(@creation.id)
		else
			redirect_to user_path(@user.id)
		end
	end

	def show
		
		@creation = Creation.find(params[:id])	
	end

end
