json.array!(@places) do |place|
  json.extract! place, :id, :name, :coords, :type_id, :town_id, :description
  json.url place_url(place, format: :json)
end
