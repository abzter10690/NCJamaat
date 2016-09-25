class UsersController < ApplicationController

	before_action :confirm_logged_in

	def profile
		if session[:userid]==params[:user_id]
			if confirm_logged_in
				user = User.where(its_id: params[:user_id]).first		
				flash[:notice] = nil
				@user_id = user.its_id
				@user_first_name = user.first_name 
				@user_last_name = user.last_name
				@user_email = user.email
			end
		else
			session[:userid] = nil
			flash[:alert] = "Unauthorized Access"
			render(layout: "application" ,template: "access/index" )				
		end
	end


end
