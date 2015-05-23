json.array!(@product_meta_infos) do |product_meta_info|
  json.extract! product_meta_info, :id, :make, :model, :color, :additional_info, :product_id
  json.url product_meta_info_url(product_meta_info, format: :json)
end
