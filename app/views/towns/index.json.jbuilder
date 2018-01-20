json.towns @towns do |town|
  json.extract! town, :id, :name, :description
  json.url town_url(town, format: :json)
end
