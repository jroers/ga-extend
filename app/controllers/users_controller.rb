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
		@cards = @user.cards.order("created_at DESC")
		@card = Card.find_by_id(params[:card_id]) || Card.new()
	end

	def find_card
		@card = Card.find(:card)
	end

	def edit
		@user = User.find_by_id(params[:id])	
	end

	def update
		@user = User.find_by_id(params[:id])
		@user.update_attributes(update_user_params)
		redirect_to user_path(@user.id)
	end

	def delete_photo
		@user = User.find_by_id(params[:id])
		@user.image = nil 
		@user.save
		redirect_to user_path(@user.id)
	end

	def destroy
	end

	private

	def user_params
		params.require(:user).permit(:first,:last,:email,:password)
	end

	def update_user_params
		params.require(:user).permit(:first, :last, :email, :program, :cohort, :current_title, :image, :city, :state)
	end
end
