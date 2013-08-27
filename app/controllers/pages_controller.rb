class PagesController < ApplicationController
  def home
  	@attendee = Attendee.new
  end
end
