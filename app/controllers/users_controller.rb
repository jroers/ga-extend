class UsersController < ApplicationController
	before_action :no_double_login, only: [:new]

	def index
		@users = User.all
	end

	def new
		@user = User.new
	end

	def create
		@user = User.create(user_params)
		login(@user)
		redirect_to @user
	end

	def show
		@user = User.find_by_id(params[:id])
		@cards = @user.cards || Card.new()
	end

	private

	def user_params
		params.require(:user).permit(:first,:last,:email,:password)
	end
end
