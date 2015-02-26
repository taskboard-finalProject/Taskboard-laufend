json.array!(@starts) do |start|
  json.extract! start, :id
  json.url start_url(start, format: :json)
end
