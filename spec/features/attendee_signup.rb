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

describe "the attendee admin form" do
  before :each do
    Location.create(:city_name => "New York City, NY", :id => 1)
    Attendee.create(:name => "Nigel", :email => "Nigel@example.com", :attendees => "1", :zip => "01234", :location_id => 1)
    User.create(:email => "tmsbid@gmail.com", :password => "foobar123", :password_confirmation => "foobar123")
  end

  it "sign in button goes to sign in page" do
    visit root_path
    click_link 'Sign in'
    current_path.should == "/users/sign_in"
  end

  it "logs in the admin user and shows the footer" do
    visit root_path
    click_link 'Sign in'
    fill_in 'Email', :with => "tmsbid@gmail.com"
    fill_in 'Password', :with => "foobar123"
    click_button "Sign in"
    expect(page).to have_content 'Attendees | Locations'
  end

  it "shows the attendee user's information" do
    visit root_path
    click_link 'Sign in'
    fill_in 'Email', :with => "tmsbid@gmail.com"
    fill_in 'Password', :with => "foobar123"
    click_button "Sign in"

    click_link 'Attendees'
    expect(page).to have_content 'Nigel@example.com'
  end

  it "shows the attendees for the location" do
    visit root_path
    click_link 'Sign in'
    fill_in 'Email', :with => "tmsbid@gmail.com"
    fill_in 'Password', :with => "foobar123"
    click_button "Sign in"

    click_link 'Locations'
    expect(page).to have_content 'New York City, NY 1'
  end  

end