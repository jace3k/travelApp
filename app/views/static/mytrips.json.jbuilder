json.current_user current_user.username
json.trips current_user.trips do |trip|
  json.id trip.id
  json.start_date trip.start_date
  json.end_date trip.end_date
  json.name trip.name
  json.places trip.places do |place|
    json.name place.name
    json.type place.type.name
    json.coords place.coords
    json.town place.town.name
    json.description place.description
  end
end
