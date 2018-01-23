json.posts @current_trip.posts do |post|
  json.id post.id
  json.author post.user.username
  json.post post.content
  json.created_at post.created_at
end
