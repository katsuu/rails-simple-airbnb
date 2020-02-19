# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning the database...'
Flat.destroy_all

puts 'All cleared'
puts 'Creating new flats...'

9.times do
  Flat.create(
    name: Faker::Address.street_name,
    address: Faker::Address.street_address,
    description: ['The property boasts easy access to the bustling Shoreditch, home to great restaurants, pubs, and nightlife. The home is also close to Bethnal Green and Hoxton stations for easy public transportation access to the rest of London.
', 'A very bright and airy ground floor flat, period building with high ceilings, lovely neighborhood close to Holland Park, Hammersmith, Notting Hill. Sit-down kitchen. One bedroom + sofa bed in living room.', 'Amazing Location by Hyde Park! Family Studio Apartment on 1st Floor with Private EN suite shower room. Newly Refurbished Sleeps 5. Free High Speed WIFI. Fresh Linen/Towels. Equipped Kitchenette. Communal Laundry Facilities. Excellent Location. Great Transport links! Ideal for solo adventurers, Couples, Families or business travellers.'].sample,
    price_per_night: (30..200).to_a.sample,
    number_of_guests: (1..10).to_a.sample,
    banner_url: 'https://source.unsplash.com/random/?house'
  )
end

puts 'Success! All flats have been added.'
