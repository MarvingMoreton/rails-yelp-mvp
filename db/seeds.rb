puts "Cleaning DB..."

Restaurant.destroy_all

puts "Seeding restaurants..."

5.times do
  restaurant = Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.phone_number,
    category: %w[chinese italian japanese french belgian].sample
  )
  puts "Restaurant with id #{restaurant.id} was added"
end

puts "All done!"
