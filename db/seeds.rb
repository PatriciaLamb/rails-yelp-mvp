# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
makimaki = { name: 'Maki Maki', address: 'Bonn', phone_number: '5343535', category: 'japanese' }
pizza_east = { name: 'Pizza East', address: 'Cologne', phone_number: '3452524', category: 'italian' }
vapiano = { name: 'Vapiano', address: 'Cologne', phone_number: '342523', category: 'italian' }
cityfries = { name: 'City Fries', address: 'Frankfurt', phone_number: '342525', category: 'belgian' }
chomchay = { name: 'Chom Chay', address: 'Cologne Rudolplatz', phone_number: '235325', category: 'chinese' }

[makimaki, pizza_east, vapiano, cityfries, chomchay].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
