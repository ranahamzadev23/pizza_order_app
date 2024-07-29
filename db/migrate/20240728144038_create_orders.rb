class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders, id: :uuid, default: -> { "uuid_generate_v4()" } do |t|
      t.datetime :order_date, null: false
      t.text :detail
      t.integer :status, default: 0, null: false
      t.references :customer, foreign_key: true, null: false
      t.references :coupon, foreign_key: true
      t.timestamps
    end
  end
end
