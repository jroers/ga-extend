class SessionsController < ApplicationController
	before_action :no_double_login, only: [:new]

	def new
		@user = User.new
	end

	def create
		user_params = params.require(:user).permit(:email, :password)
    @user = User.confirm(user_params)
    if @user
      login(@user)
      redirect_to @user
    else
    	flash[:notice] = "Invalid Email or Password"
      redirect_to login_path
    end
	end

	def destroy
		logout
		redirect_to root_path
	end
end
