json.array!(@orders) do |order|
  json.extract! order, :id, :quantity, :product_id, :user_id, :shipping_address_id, :status
  json.url order_url(order, format: :json)
end
