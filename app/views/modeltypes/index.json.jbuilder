json.array!(@modeltypes) do |modeltype|
  json.extract! modeltype, :id, :name, :model_type_slug, :model_type_code, :integer, :base_price
  json.url modeltype_url(modeltype, format: :json)
end
