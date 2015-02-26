json.array!(@taskboard_collections) do |taskboard_collection|
  json.extract! taskboard_collection, :id, :name
  json.url taskboard_collection_url(taskboard_collection, format: :json)
end
