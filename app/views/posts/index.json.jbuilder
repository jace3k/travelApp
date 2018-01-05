json.array!(@posts) do |post|
  json.extract! post, :id, :trip_id_id, :user_id_id, :content
  json.url post_url(post, format: :json)
end
