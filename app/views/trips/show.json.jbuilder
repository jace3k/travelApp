if current_user.trips.include?(@trip)
  json.id @trip.id
  json.start_date @trip.start_date
  json.end_date @trip.end_date
  json.name @trip.name
  json.town_name @trip.town.name
  json.town_desc @trip.town.description
  json.town_id @trip.town.id
  json.admin_id @current_user.id

  json.users @trip.users do |user|
    json.id user.id
    json.username user.username
  end

  json.places @trip.places do |place|
    json.id place.id
    json.name place.name
    json.town place.town.name
    json.type place.type.name
    json.description place.description
  end
end
