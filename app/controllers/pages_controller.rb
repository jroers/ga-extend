class PagesController < ApplicationController
  def home
  	@cards = Card.all.order('created_at DESC')
  	@card = Card.find_by_id(params[:card_id])
  	@user = User.all
  end
end
