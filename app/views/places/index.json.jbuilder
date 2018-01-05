json.array!(@places) do |place|
  json.extract! place, :id, :name, :coords, :placetype_id_id, :town_id_id, :description
  json.url place_url(place, format: :json)
end
