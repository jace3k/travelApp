json.extract! @place, :id, :name, :address, :type_id, :town_id, :description
json.town_name @place.town.name
json.type_name @place.type.name
json.lat @place.lat
json.lon @place.lon
json.reviews @place.reviews.sort_by(&:created_at).reverse do |review|
  json.author_id review.user.id
  json.author review.user.username
  json.created_at review.created_at.strftime("%Y/%m/%d %H:%M")
  json.content review.content
end
