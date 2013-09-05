require 'spec_helper'

describe "the attendee signup process", :type => :feature do
  # before :each do
  #   User.make(:email => 'user@example.com', :password => 'caplin')
  # end

  it "signs me up" do
    visit root_path
    within("#sign-up-form") do
      fill_in 'Name', :with => ''
      fill_in 'Email', :with => ''
      fill_in 'Nearest city', :with => '' # CHOOSE CITY
      fill_in 'Zip code', :with => ''
      fill_in 'Attendees', :with => '' # CHOOSE 1
    end
    click_link 'Submit'
    expect(page).to have_content 'Great, we have your info'
  end
end