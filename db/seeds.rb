# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
Flat.destroy_all

(1..5).each do |my_flat|
  Flat.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    description: Faker::Restaurant.description,
    price_per_night: (75..234).to_a.sample,
    number_of_guests: (1..8).to_a.sample
  )
end
