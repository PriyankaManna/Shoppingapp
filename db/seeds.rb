# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Product.destroy_all
User.create!(first_name: 'Priyanka',last_name: 'Manna',email:'priyanka.manna@bacancy.com',password:'priyanka.manna@bacancy.com',password_confirmation: 'priyanka.manna@bacancy.com' )
10.times do |i|
    Product.create!(name: "Product#{i+1}", description: "Product 1 description", picture: "https://picsum.photos/200",price: (SecureRandom.random_number(9e2) + 1e2).to_i)   
end
