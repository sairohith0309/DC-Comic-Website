# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
#users data
user1 = User.create!(
  name: 'bob',
  favch: 'superman',
  email:    'bob@email.com',
  password: 'password'
)

user2 = User.create!(
  name: 'alice',
  favch: 'batman',
  email:    'alice@email.com',
  password: 'password'
)

user3 = User.create!(
  name: 'jack',
  favch: 'batman',
  email:    'jack@email.com',
  password: 'password'
)
user4 = User.create!(
  name: 'mike',
  favch: 'aquaman',
  email:    'mike@email.com',
  password: 'password'
)

#payments linked users
user1_p1 = Payment.create!(
namecard: "BOB",
cardno: 7894561,
expdate: '10-08-2027',
seccode: '123',
user: user1

)

user2_p1 = Payment.create!(
namecard: "alice",
cardno: 8941526,
expdate: '10-04-2029',
seccode: '898',
user: user2

)


#books data
Book.create(
  book_id: 'C001',
  book_title: 'action',
  book_author: 'abcd',
  book_char: 'superman',
  release_date: '10-24-1999',
  book_price: 14.99,
  description:"hello"
)

Book.create(
  book_id: 'C002',
  book_title: 'batman beyond the white knight',
  book_author: 'qwer',
  book_char: 'superman',
  release_date: '10-24-1999',
  book_price: 16.99,
  description:"hello"
)

Book.create(
  book_id: 'C003',
  book_title: 'justice league incarnate',
  book_author: 'poiyutt',
  book_char: 'superman',
  release_date: '10-24-1999',
  book_price: 8.99,
  description:"hello"

)

Book.create(
  book_id: 'C003',
  book_title: 'batman knights gilded city',
  book_author: 'sdfgh',
  book_char: 'batman',
  release_date: '10-24-1999',
  book_price: 10.99,
  description:"hello"
)


#order data

order1 = Order.create!(
  book_name: 'action',
  book_price: 14.99,
  order_status: 'In-transit',
  order_date: '12-06-2022',
  user: user1

)

order2 = Order.create!(
  book_name: 'batman beyond the white knight',
  book_price: 16.99,
  order_status: 'delivery',
  order_date: '12-06-2022',
  user: user2
)

order3 = Order.create!(
  book_name: 'justice league incarnate',
  book_price: 8.99,
  order_status: 'request updated',
  order_date: '12-06-2022',
  user: user3
)

order4 = Order.create!(
  book_name: 'batman knights gilded city',
  book_price: 10.99,
  order_status: 'delivered',
  order_date: '12-06-2022',
  user: user4
)



