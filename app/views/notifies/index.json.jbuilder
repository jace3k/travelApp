json.notifies @notifies do |notify|
  json.extract! notify, :id, :user_id, :trip_id, :message, :notify_type
end
