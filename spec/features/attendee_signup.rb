require 'spec_helper'

describe "the attendee signup process", :type => :feature do
  before :each do
    Location.create(:city_name => "New York City, NY")
  end

  it "signs me up" do
    visit root_path
    within("#sign-up-form") do
      fill_in 'Name', :with => 'Nigel'
      fill_in 'Email', :with => 'Llama@example.com'
      select("New York City, NY", :from => "attendee[location_id]")
      fill_in 'Zip', :with => '01234'
      select("1", :from => "attendee[attendees]")
    end
    click_button 'Submit'
    expect(page).to have_content 'Great, we have your info'
  end
end