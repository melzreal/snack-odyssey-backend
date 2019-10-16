class Api::SessionsController < ApplicationController

	def create	
 		

 		 @user = User.find_by(email: params[:session][:email])
		
 	
		 if @user && @user.authenticate(params[:session][:password]) 
		 	session[:user_id] = @user.id
		 	render json: @user

		 else 
		   response = {
		   	error: "Invalid credentials",
		   	details: @user.errors.full_messages
		   }
		   puts response
		   render json: response, status: 401

		 end 


	end


	def get_current_user
		if logged_in? 
			render json: current_user 
		else 
		 render json: { error: "not logged in" }
		end 
	end 

	def destroy
		session.clear
		render json: { notice: "logged out" }
	end 


end
