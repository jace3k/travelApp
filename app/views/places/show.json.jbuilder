json.extract! @place, :id, :name, :coords, :type_id, :town_id, :description
json.town_name @place.town.name
json.type_name @place.type.name
