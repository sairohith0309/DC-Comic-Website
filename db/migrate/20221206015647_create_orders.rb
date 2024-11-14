class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.string :book_name
      t.decimal :book_price
      t.date :order_date
      t.string :order_status

      t.timestamps
    end
  end
end
