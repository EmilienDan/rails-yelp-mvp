# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
require 'faker'
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# Faker::Restaurant.unique.name
# Faker::Address.full_address
# Faker::PhoneNumber.phone_number_with_country_code
# Faker::Restaurant.review
categ = %w[chinese italian japanese french belgian]

Restaurant.destroy_all

5.times do
  Restaurant.create(
    name: Faker::Restaurant.unique.name,
    address: Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.phone_number_with_country_code,
    category: categ.sample
  )
end
