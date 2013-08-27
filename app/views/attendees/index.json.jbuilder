json.array!(@attendees) do |attendee|
  json.extract! attendee, :name, :semester_season, :semester_year, :address, :phone, :email, :attendees
  json.url attendee_url(attendee, format: :json)
end
