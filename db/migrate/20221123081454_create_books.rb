class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :book_id
      t.string :book_title
      t.string :book_author
      t.string :book_char
      t.string :release_date
      t.string :date
      t.decimal :book_price
      t.string :description

      t.timestamps
    end
  end
end
