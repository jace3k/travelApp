json.current_user current_user.username
json.reviews @place.reviews do |review|
  json.id review.id
  json.author review.user.username
  json.content review.content
  json.created_at review.created_at.strftime("%Y/%m/%d %H:%M")
end
