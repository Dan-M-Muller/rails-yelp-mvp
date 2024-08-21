# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "belgian"}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "italian", phone_number: "(49) 99647386"}
komi = {name: "Komi Nakombe", address: "8 Ass St, London E", category: "japanese"}
croat =  {name: "Croassã du Sutiã", address: "56A Shoreditch High St, London E1 6PQ", category: "french", phone_number: "(49) 98666874"}
sikoo = {name: "Si Koo Dai", address: "8 Ass St, London E", category: "chinese"}

[dishoom, pizza_east, komi, croat, sikoo].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
