# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
dishoom = { name: 'Dishoom', address: '7 Boundary St, London E2 7JE', phone_number: '45855647', category: 'italian' }
pizza_east = { name: 'Pizza East', address: '56A Shoreditch High St, London', phone_number: '78544545', category: 'italian'}
le_marmiton = { name: 'Le Marmiton', address: 'Galeire de la Reine 38 Brussels', phone_number: '47855632', category: 'japanese' }
atrio = { name: 'Atrio', address: 'Rue Stevin 132 Brussels', phone_number: '11365323', category: 'french' }
pasta_divina = { name: 'Pasta Divina', address: 'Rue de la Montagne 16', phone_number: '89653256', category: 'belgian' }

[ dishoom, pizza_east, le_marmiton, atrio, pasta_divina ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
