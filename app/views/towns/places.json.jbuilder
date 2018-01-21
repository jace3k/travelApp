json.id @current_town.id
json.places @current_town.places do |place|
  json.id place.id
  json.name place.name
  json.coords place.address
  json.type place.type.name
  json.description place.description
end
