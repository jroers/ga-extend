class CardsController < ApplicationController
	def index
		@cards = Card.all.order("created_at DESC")
	end

	def new
		@card = Card.new
	end

	def create
		@card = Card.create(card_params)
		if @card.save
			flash[:notice] = "successfully created new card!"
			redirect_to user_path(current_user)
		else
			flash[:notice] = "something went wrong :'("
			redirect_to '/'
		end
	end

	def show
		@card = get_card
	end

	def edit
		@card = get_card
		render :partial => "editCard"
	end

	def update
		@card = get_card
		@card.update_attributes(card_params)
		redirect_to user_path(current_user)
	end

	def destroy
		@card = get_card
		@card.destroy
		redirect_to user_path(current_user)
	end

	private

	def get_card
		Card.find_by_id(params[:id])
	end

	def card_params
		params.require(:card).permit(:family, :title, :working_on, :user_id)
	end
end
