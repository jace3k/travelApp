json.trips @current_user.trips do |trip|
  json.trip_id trip.id
  json.users trip.users do |user|
    if @current_user != user
      json.user_id user.id
      json.username user.username
    end
  end
end
