json.places @places do |place|
  json.extract! place, :id, :name, :coords, :type_id, :town_id, :description
  json.type_name place.type.name
  json.town_name place.town.name
end
