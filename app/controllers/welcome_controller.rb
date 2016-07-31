class WelcomeController < ApplicationController
  def index
  	@restoraunts = Restoraunt.all
  	@special_promotions = SpecialPromotion.all
  	@events = Event.all

  end
end
