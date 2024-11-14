# == Schema Information
#
# Table name: books
#
#  id           :bigint           not null, primary key
#  book_author  :string
#  book_char    :string
#  book_price   :decimal(, )
#  book_title   :string
#  date         :string
#  description  :string
#  release_date :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  book_id      :string
#
class Book < ApplicationRecord
end
