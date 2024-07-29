class Order < ApplicationRecord
  belongs_to :customer
  has_many :order_items, dependent: :destroy
  belongs_to :coupon, optional: true
end
