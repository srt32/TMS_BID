class PagesController < ApplicationController
  def home
  	@attendee = Attendee.new
    locations = Location.all
    @locations_json = locations.to_gmaps4rails
  end
end
