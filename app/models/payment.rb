# == Schema Information
#
# Table name: payments
#
#  id         :bigint           not null, primary key
#  cardno     :bigint
#  cardtype   :string
#  expdate    :date
#  namecard   :string
#  seccode    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint
#
# Indexes
#
#  index_payments_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class Payment < ApplicationRecord

    belongs_to(
    :user,
    class_name:  'User',
    foreign_key: 'user_id',
    inverse_of:  :payments
  )
end
