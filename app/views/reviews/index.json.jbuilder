json.array!(@reviews) do |review|
  json.extract! review, :id, :place_id_id, :user_id_id, :content
  json.url review_url(review, format: :json)
end
