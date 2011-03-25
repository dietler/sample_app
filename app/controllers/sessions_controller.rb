class SessionsController < ApplicationController
  
	def new
		@title = "Sign in"
  end
  
  def create
  	user = User.authenciate(params[:session][:email], params[:session][:password])
  	if user.nil?
  		flash.now[:error] = "Invalid email/password combination."
  		@title = "Sign in"
  		render 'new'
  	else
  		# Handle successful signin.
	end
	
	def destroy
	end

end
