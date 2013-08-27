class Attendee < ActiveRecord::Base
  validates_presence_of :name, :email, :attendees
  validates_uniqueness_of :email
end
