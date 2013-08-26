json.array!(@registrations) do |registration|
  json.extract! registration, :name, :semester_season, :semester_year, :address, :phone, :email, :attendees
  json.url registration_url(registration, format: :json)
end
