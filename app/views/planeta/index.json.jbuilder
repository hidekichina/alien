json.array!(@planeta) do |planetum|
  json.extract! planetum, :id, :name
  json.url planetum_url(planetum, format: :json)
end
