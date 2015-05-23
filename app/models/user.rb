class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :shipping_addresses
  has_many :orders
  has_many :product_reviews

  validates :first_name, :presence => true
  validates :last_name, :presence => true

  def cart
    Cartman::Cart.new(id)
  end
end
