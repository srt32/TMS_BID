json.array!(@locations) do |location|
  json.extract! location, :city_name, :host_name, :address, :description, :latitude, :longitude, :gmaps
  json.url location_url(location, format: :json)
end
