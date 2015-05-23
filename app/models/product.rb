class Product < ActiveRecord::Base
  has_one :product_category
  has_many :product_images
  has_one :product_meta_info
  belongs_to :order
  has_many :product_reviews
  has_many :line_items
  before_destroy :ensure_not_referenced_by_any_line_item



  def ensure_not_referenced_by_any_line_item
  if line_items.empty?
  return true


  else
  errors.add(:base, 'Line Items present')
  return false
  end
end
end
