json.array!(@products) do |product|
  json.extract! product, :id, :title, :description, :price, :product_category_id
  json.url product_url(product, format: :json)
end
