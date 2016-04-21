class PagesController < ApplicationController
  def home
  	@cards = Card.all.order('created_at DESC')
  end
end
