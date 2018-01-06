json.array!(current_user.trips) do |trip|
  json.extract! trip, :id, :start_date, :end_date, :name
  json.url trip_url(trip, format: :json)
end
