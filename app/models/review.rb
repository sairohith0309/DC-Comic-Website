# == Schema Information
#
# Table name: reviews
#
#  id         :bigint           not null, primary key
#  review     :string
#  status     :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint
#
# Indexes
#
#  index_reviews_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class Review < ApplicationRecord

    belongs_to(
        :user,
        class_name:  'User',
        foreign_key: 'user_id',
        inverse_of:  :reviwes
      )

end
