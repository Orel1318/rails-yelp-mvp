# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
puts "Cleaning database..."
Restaurant.destroy_all

Restaurant.create(name: "Parisina", address: "Paris", category:"french")
Restaurant.create(name: "Hen Hao", address: "Hong kong", category:"chinese")
Restaurant.create(name: "Arigato", address: "Tokio", category:"japanese")
Restaurant.create(name: "Bella", address: "Florencia", category:"italian")
Restaurant.create(name: "Cocina", address: "Brusellas", category:"belgian")

puts "Finished! Created #{Restaurant.count} restaurants."
