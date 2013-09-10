class Attendee < ActiveRecord::Base
  validates_presence_of :name, :email, :attendees, :zip
  validates_uniqueness_of :email, message: "has already been registered for this event. If you want to change your RSVP, please email davidandnancy.grant@mountainschool.org"

  belongs_to :location
end
