# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "date"
(1..10).each_with_index do |single, index|
  Supplier.create(name: "supp#{index + 1}")
end

(1..25).each_with_index do |single, index|
  Author.create(first_name: "aFname#{index + 1}",last_name: "aLname#{index + 1}",title: "aTitle#{index + 1}")
end

(1..25).each_with_index do |single, index|
  Customer.create(first_name: "cFname#{index + 1}",last_name: "cLname#{index + 1}",title: "cTitle#{index + 1}",email: "cFname#{index+1}@gmail.com",visits: 0, order_count: 0, lock_version:0)
end

(1..25).each_with_index do |single, index|
  Order.create(date_submitted: Date.today,status: index % 3, subtotal:20, shipping: 100, tax:80, total:200, customer_id: index+1)
end

(1..25).each_with_index do |single, index|
    Book.create(title: "Book#{index+1}",year_published:2020, isbn:2020, price: 100, out_of_print: (index%2 ? true : false), views: 100, supplier_id: index+1, author_id: index+1)
  end
  

(1..25).each_with_index do |single, index|
    Review.create(title: "Review#{index+1}",body: "Body#{index+1}",rating:10, state: index % 2, customer_id: index+1, book_id: index+1)
  end