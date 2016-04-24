class PagesController < ApplicationController
  def home
  	@cards = Card.all.order('created_at DESC')
  	@user = User.all
  	@card = Card.new()
  end
end
