class SessionsController < ApplicationController
	force_ssl

	def new
	end

	def create
	  member = Member.from_omniauth(env["omniauth.auth"])
	  reset_session
	  session[:member_id] = member.id
	  redirect_to root_url, :notice => "Signed in!"
	end

	def destroy
	  session[:member_id] = nil
	  redirect_to root_url, :notice => "Signed out!"
	end

	def failure 
		redirect_to root_url, alert: "Authentication failed, please try again."
	end
end