json.array!(@modeltypes) do |modeltype|
  json.extract! modeltype, :model_id, :id, :name, :model_type_slug, :model_type_code, :base_price
  json.url modeltype_url(modeltype, format: :json)
end
