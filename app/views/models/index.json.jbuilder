json.array!(@models) do |model|
  json.extract! model, organization_id, :id, :name, :model_slug
  json.url model_url(model, format: :json)
end
