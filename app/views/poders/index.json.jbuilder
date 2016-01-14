json.array!(@poders) do |poder|
  json.extract! poder, :id, :name
  json.url poder_url(poder, format: :json)
end
