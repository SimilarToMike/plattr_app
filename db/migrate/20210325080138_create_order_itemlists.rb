class CreateOrderItemlists < ActiveRecord::Migration[6.0]
  def change
    create_table :order_itemlists do |t|
      t.integer :quantity
      t.integer :record_id
      t.integer :order_id
      t.decimal :total
      t.decimal :unit_price

      t.timestamps
    end
  end
end
