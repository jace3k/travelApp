json.trips current_user.trips do |trip|
  json.id trip.id
  json.trip trip.name
  json.town trip.town.name
  json.places_count trip.places.count
  json.users_count trip.users.count
  json.start_date trip.start_date
  json.end_date trip.end_date
end
