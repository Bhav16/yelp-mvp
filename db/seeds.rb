puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
5.times do
  restaurant = Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.phone_number,
    category: Faker::Restaurant.type
  )

  puts "Created #{restaurant.name}"
end
puts 'Finished!'
