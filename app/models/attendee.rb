class Attendee < ActiveRecord::Base
  validates_presence_of :name, :email, :attendees, :zip
  validates_uniqueness_of :email
  validates :zip, numericality: { only_integer: true }
  validates :zip, numericality: { greater_than: 0 }

  belongs_to :location
end
