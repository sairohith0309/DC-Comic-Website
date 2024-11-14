class CreatePayments < ActiveRecord::Migration[7.0]
  def change
    create_table :payments do |t|
      t.string :cardtype
      t.string :namecard
      t.integer :cardno, :limit =>8
      t.date  :expdate
      t.integer :seccode

      t.timestamps
    end
  end
end
