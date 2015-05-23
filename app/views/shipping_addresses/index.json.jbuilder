json.array!(@shipping_addresses) do |shipping_address|
  json.extract! shipping_address, :id, :line_1, :line_2, :city, :province, :zip_code, :user_id
  json.url shipping_address_url(shipping_address, format: :json)
end
