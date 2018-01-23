json.current_trip @current_trip.name
json.places @current_trip.places do |place|
  json.id place.id
  json.name place.name
  json.coords place.coords
  json.town place.town.name
  json.type place.type.name
  json.description place.description
  json.lat place.lat
  json.lon place.lon
end
