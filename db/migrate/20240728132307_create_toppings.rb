class CreateToppings < ActiveRecord::Migration[6.1]
  def change
    create_table :toppings do |t|
      t.string :name, null: false
      t.decimal :price, precision: 4, scale: 2, null: false
      t.timestamps
    end
  end
end
