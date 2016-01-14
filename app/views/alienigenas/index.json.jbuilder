json.array!(@alienigenas) do |alienigena|
  json.extract! alienigena, :id, :name, :age
  json.url alienigena_url(alienigena, format: :json)
end
