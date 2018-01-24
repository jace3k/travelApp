json.notifies @notifies.where('created_at >= ? AND user_id = ?', 1.week.ago, current_user.id).sort_by(&:created_at).reverse do |notify|
  json.extract! notify, :id, :user_id, :trip_id, :message, :notify_type
  json.created_at notify.created_at.strftime("%Y/%m/%d %H:%M")
  json.trip_name notify.trip.name
end
