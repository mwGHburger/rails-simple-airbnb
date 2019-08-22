# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Flat.destroy_all

puts "Creating fake flats..."
flat_attributes = [
  {
    name: 'Light & Spacious Garden Flat London',
    address: '10 Clifton Gardens London W9 1DT',
    description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
    price_per_night: 75,
    number_of_guests: 3
  },
  {
    name: 'Australian shack',
    address: 'Outback 75',
    description: 'A small structure with lots of bugs.',
    price_per_night: 75,
    number_of_guests: 3
  },
  {
    name: 'Super hipster flat',
    address: '19 clover Gardens paris 80 1DT',
    description: 'It has two rooms',
    price_per_night: 120,
    number_of_guests: 5
  },
  {
    name: 'Heavy & small rooftop Flat Japan',
    address: '1000 Popcorn Gardens China',
    description: 'A must try experience',
    price_per_night: 5000,
    number_of_guests: 2
  }
]

Flat.create!(flat_attributes)
puts"Finished!"
