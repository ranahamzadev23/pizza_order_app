class CreatePizzaSizes < ActiveRecord::Migration[6.1]
  def change
    create_table :pizza_sizes do |t|
      t.references :pizza, foreign_key: true, null: false
      t.integer :size, default: 0, null: false
      t.decimal :price, precision: 6, scale: 2, null: false
      t.timestamps
    end
  end
end
