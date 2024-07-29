class CreateCustomers < ActiveRecord::Migration[6.1]
  def change
    create_table :customers do |t|
      t.string :name, null: false
      t.string :contact_number, null: false
      t.text :address, null: false
      t.timestamps
    end
  end
end
