class OrderItem < ApplicationRecord
  belongs_to :order
  belongs_to :pizza
  belongs_to :topping, optional: true
end
