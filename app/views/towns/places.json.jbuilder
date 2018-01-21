json.id @current_town.id
json.places @current_town.places do |place|
  json.id place.id
  json.name place.name
  json.places place.address
  json.type place.type.name
  json.description place.description
  json.review_count place.reviews.count
end
