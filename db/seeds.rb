puts "Deleting old data..."
Product.destroy_all
User.destroy_all

puts "Creating users..."
user1 = User.create(name: "Mohamed Amin")
user2 = User.create(name: "Abdilaziz")
user3 = User.create(name: "Ismahan")

puts "Creating products..."
product1 = Product.create(name: "Stapler")
product2 = Product.create(name: "Whiteboard")
product3 = Product.create(name: "Dry Erase Markers")
product4 = Product.create(name: "Ballpoint Pens")
product5 = Product.create(name: "Scotch Tape")

puts "Creating reviews..."
review1 = Review.create(star_rating: 1, comment: "Amazing product", product_id: product1.id, user_id: user1.id)
review2 = Review.create(star_rating: 4, comment: "I love the product", product_id: product5.id, user_id: user1.id)
review3 = Review.create(star_rating: 3, comment: "Looking forward to shop", product_id: product1.id, user_id: user2.id)
review4 = Review.create(star_rating: 5, comment: "Product is quality", product_id: product4.id, user_id: user1.id)

puts "Seeding done!"
