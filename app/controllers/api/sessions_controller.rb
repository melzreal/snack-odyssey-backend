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

	def delete
	end 


end
