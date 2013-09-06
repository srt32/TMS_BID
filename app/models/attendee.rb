class Attendee < ActiveRecord::Base
  validates_presence_of :name, :email, :attendees, :zip
  validates_uniqueness_of :email

  belongs_to :location
end
