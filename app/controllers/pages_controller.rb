class PagesController < ApplicationController
  def home
  	@registration = Registration.new
  end
end
