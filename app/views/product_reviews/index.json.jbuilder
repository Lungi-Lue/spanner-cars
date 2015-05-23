json.array!(@product_reviews) do |product_review|
  json.extract! product_review, :id, :review, :product_id, :user_id
  json.url product_review_url(product_review, format: :json)
end
