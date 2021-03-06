json.id @current_town.id
json.places @current_town.places do |place|
  json.id place.id
  json.name place.name
  json.address place.address
  json.type place.type.name
  json.description place.description
  json.review_count place.reviews.count
  json.lat place.lat
  json.lon place.lon
end
