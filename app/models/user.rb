# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  address                :string
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  favch                  :string
#  name                   :string
#  phoneno                :bigint
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

      has_many(
        :payments,
        class_name: 'Payment',
        foreign_key: 'user_id',
        inverse_of: :user,
        dependent: :destroy
      )

      has_many(
        :reviews,
        class_name: 'Review',
        foreign_key: 'user_id',
        inverse_of: :user,
        dependent: :destroy
      )
      

      has_many(
        :orders,
        class_name: 'Order',
        foreign_key: 'user_id',
        inverse_of: :user,
        dependent: :destroy
    )
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

      

        
end
