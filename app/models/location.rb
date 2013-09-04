class Location < ActiveRecord::Base
  validates_presence_of :city_name
  
  has_many :attendees

  geocoded_by :city_name
  after_validation :geocode

  acts_as_gmappable

  def gmaps4rails_address
    "#{self.city_name}"
  end
end
