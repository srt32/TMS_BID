class Attendee < ActiveRecord::Base
  validates_presence_of :name, :email, :attendees
end
