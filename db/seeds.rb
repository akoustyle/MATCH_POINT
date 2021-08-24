# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Destroying all Sports..."
Sport.destroy_all
puts "All sports destroyed successfully!"

puts "Destroying all Locations..."
Location.destroy_all
puts "All locations destroyed successfully!"

puts "Creating sports..."
cycling = Sport.create!(name: 'cycling')
puts "Sport: #{cycling.name} created !"
football = Sport.create!(name: 'football')
puts "Sport: #{football.name} created !"
tennis = Sport.create!(name: 'tennis')
puts "Sport: #{tennis.name} created !"
rugby = Sport.create!(name: 'rugby')
puts "Sport: #{rugby.name} created !"
basketball = Sport.create!(name: 'basketball')
puts "Sport: #{basketball.name} created !"
handball = Sport.create!(name: 'handball')
puts "Sport: #{handball.name} created !"
judo = Sport.create!(name: 'judo')
puts "Sport: #{judo.name} created !"
pétanque = Sport.create!(name: 'pétanque')
puts "Sport: #{pétanque.name} created !"
ping_pong = Sport.create!(name: 'ping pong')
puts "Sport: #{ping_pong.name} created !"
horse_riding = Sport.create!(name: 'horse riding')
puts "Sport: #{horse_riding.name} created !"
golf = Sport.create!(name: 'golf')
puts "Sport: #{golf.name} created !"
puts "All sports created successfully!"

# puts "Creating locations..."
# locations = Location.create!(name: '',
#                              address: '',
#                              sport_id: '',
#                              longitude: ,
#                              latitude:
# )
