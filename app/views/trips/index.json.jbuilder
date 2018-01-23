json.trips_ended current_user.trips.where(:end_date => Date.new(0000,1,1)..Date.yesterday).sort_by(&:start_date) do |trip|
  json.id trip.id
  json.trip trip.name
  json.town trip.town.name
  json.places_count trip.places.count
  json.users_count trip.users.count
  json.start_date trip.start_date
  json.end_date trip.end_date
end
json.trips current_user.trips.where(:end_date => Date.today..Date.new(9999,12,12)).sort_by(&:start_date) do |trip|
  json.id trip.id
  json.trip trip.name
  json.town trip.town.name
  json.places_count trip.places.count
  json.users_count trip.users.count
  json.start_date trip.start_date
  json.end_date trip.end_date
end
