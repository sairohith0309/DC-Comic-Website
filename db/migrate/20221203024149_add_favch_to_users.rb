class AddFavchToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :favch, :string
  end
end
