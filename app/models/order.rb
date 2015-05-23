class Order < ActiveRecord::Base
  belongs_to :product
  belongs_to :user
  belongs_to :shipping_address
end
