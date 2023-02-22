puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
dishoom = {name: 'Dishoom', address: '7 Boundary St, London E2 7JE', category: 'chinese', phone_number: '0609089878'}
pizza_east = {name: 'Pizza East', address: '56A Shoreditch High St, London E1 6PQ', category: 'italian', phone_number: '0609065878'}
pizzeria = {name: 'Pizzeria', address: '7 Boundary St, London E2 7JE',category: 'chinese', phone_number: '0609089878'}
cookiesdos = {name: 'Cookiesdos', address: '56A Shoreditch High St, London E1 6PQ', category: 'italian', phone_number: '0609065878'}
marieta = {name: 'Marieta', address: '7 Boundary St, London E2 7JE',category: 'chinese', phone_number: '0609089878'}
bouillon = {name: 'Bouillon', address: '56A Shoreditch High St, London E1 6PQ', category: 'italian', phone_number: '0609065878'}

[dishoom, pizza_east, pizzeria, cookiesdos, marieta, bouillon].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
