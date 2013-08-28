class Location < ActiveRecord::Base
  validates_presence_of :city_name
end
