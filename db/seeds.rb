# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database"
Restaurant.destroy_all

puts "Creating restaurants"
chez_la_vielle = { name: "Chez la vieille", address: "Rue de Gand, Lille", phone_number: "0245243300", category: "french" }
levv = { name: "Le verre volé", address: "Rue de Lancry, Paris", phone_number: "0323490056", category: "french" }
becane = { name: "La Bécane à Gaston", address: "Rue Lucien Sampaix", phone_number: "0746532219", category: "french" }
felicita = { name: "La Félicita", address: "Station F", phone_number: "0246443300", category: "italian" }
ravioli = { name: "Ravioli Nord Est", address: "Rue Civiale", phone_number: "0648657894", category: "chinese" }

[chez_la_vielle, levv, becane, felicita, ravioli].each do |resto|
  new = Restaurant.create!(resto)
  puts "The restaurant #{new.name} is created"
end
puts "Finished!"
