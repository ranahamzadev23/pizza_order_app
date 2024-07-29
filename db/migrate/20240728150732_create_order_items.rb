class CreateOrderItems < ActiveRecord::Migration[6.1]
  def change
    create_table :order_items do |t|
      t.references :pizza, foreign_key: true, null: false
      t.references :order, foreign_key: true, null: false, type: :uuid
      t.integer :quantity, null: false, default: 1
      t.decimal :total_amount, null: false, precision: 10, scale: 2
      t.references :topping, foreign_key: true
      t.timestamps
    end
  end
end
