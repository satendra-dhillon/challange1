json.array!(@products) do |product|
  json.extract! product, :id, :name, :model, :price
  json.url product_url(product, format: :json)
end
