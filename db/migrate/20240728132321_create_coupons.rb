class CreateCoupons < ActiveRecord::Migration[6.1]
  def change
    create_table :coupons do |t|
      t.string :code, null: false
      t.integer :discount_percentage, null: false
      t.timestamps
    end
  end
end
