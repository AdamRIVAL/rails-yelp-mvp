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

puts "Creating 5 restaurants"
Restaurant.create!(name: "Hello", address: "Nantes", category: Restaurant::CATEGORIES.sample, phone_number: "0606060606")
Restaurant.create!(name: "Je suis un restaurant", address: "Nantes aussi", category: Restaurant::CATEGORIES.sample, phone_number: "0665352621")
Restaurant.create!(name: "Chaise", address: "Paris", category: Restaurant::CATEGORIES.sample, phone_number: "0606060606")
Restaurant.create!(name: "J'ai vraiment pas d'idées", address: "Montpellier", category: Restaurant::CATEGORIES.sample, phone_number: "0699974901")
Restaurant.create!(name: "Le Lion et L'agneau", address: "Nantes", category: Restaurant::CATEGORIES.sample, phone_number: "0655685420")


puts "Finished! Created #{Restaurant.count} restaurants."
