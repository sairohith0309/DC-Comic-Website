# == Schema Information
#
# Table name: orders
#
#  id           :bigint           not null, primary key
#  book_name    :string
#  book_price   :decimal(, )
#  order_date   :date
#  order_status :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  user_id      :bigint
#
# Indexes
#
#  index_orders_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class Order < ApplicationRecord
    belongs_to(
        :user,
        class_name:  'User',
        foreign_key: 'user_id',
        inverse_of:  :orders
      )



end
