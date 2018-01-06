json.current_user current_user.username
json.reviews @place.reviews do |review|
  json.id review.id
  json.author review.user.username
  json.conent review.content
  json.created_at review.created_at
end
