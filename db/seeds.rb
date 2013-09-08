# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

locations = Location.create([{ city_name: 'New York City, NY' }, { city_name: 'San Francisco, CA' }])

Attendee.create( name: 'Nigel', email: 'Nigel@example.com', attendees: 1, location_id: locations.first, zip: '12345')