json.towns @towns do |town|
  json.extract! town, :id, :name, :description, :photo_url
end
