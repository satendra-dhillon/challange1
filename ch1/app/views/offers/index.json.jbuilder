json.array!(@offers) do |offer|
  json.extract! offer, :id, :offer_price, :offer_by, :product_id
  json.url offer_url(offer, format: :json)
end
