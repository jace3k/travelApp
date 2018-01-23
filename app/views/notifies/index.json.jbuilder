json.notifies current_user.notifies.sort_by(&:created_at).reverse do |notify|
  json.extract! notify, :id, :user_id, :trip_id, :message, :notify_type
  json.created_at notify.created_at.strftime("%Y/%m/%d %H:%M")
end
