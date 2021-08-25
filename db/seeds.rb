# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
require 'date'

puts "Destroying all Users..."
User.destroy_all
puts "All users destroyed successfully!"

puts "Destroying all Wishes..."
Wish.destroy_all
puts "All wishes destroyed successfully!"

puts "Destroying all Locations..."
Location.destroy_all
puts "All locations destroyed successfully!"

puts "Destroying all Sports..."
Sport.destroy_all
puts "All sports destroyed successfully!"

puts "Creating sports..."
cycling = Sport.create!(name: 'cycling')
puts "Sport: #{cycling.name} created !"
football = Sport.create!(name: 'football')
puts "Sport: #{football.name} created !"
tennis = Sport.create!(name: 'tennis')
puts "Sport: #{tennis.name} created !"
running = Sport.create!(name: 'running')
puts "Sport: #{running.name} created !"
basketball = Sport.create!(name: 'basketball')
puts "Sport: #{basketball.name} created !"
# handball = Sport.create!(name: 'handball')
# puts "Sport: #{handball.name} created !"
petanque = Sport.create!(name: 'pétanque')
puts "Sport: #{petanque.name} created !"
ping_pong = Sport.create!(name: 'ping pong')
puts "Sport: #{ping_pong.name} created !"
horse_riding = Sport.create!(name: 'horse riding')
puts "Sport: #{horse_riding.name} created !"
golf = Sport.create!(name: 'golf')
puts "Sport: #{golf.name} created !"
puts "All sports created successfully!"

puts "Creating locations..."
location = Location.create!(name: 'Terrain de sport des jardins Saint-Paul',
                            address: '9 rue Charlemagne, 75004 Paris',
                            sport_id: football.id,
                            longitude: 48.85443,
                            latitude: 2.35894)
puts "Location #{location.name} created successfully!"

puts "Creating locations..."
location = Location.create!(name: 'Terrain de sport des jardins Saint-Paul',
                            address: '9 rue Charlemagne, 75004 Paris',
                            sport_id: basketball.id,
                            longitude: 48.85443,
                            latitude: 2.35894)
puts "Location #{location.name} created successfully!"

puts "Creating locations..."
location = Location.create!(name: 'Square Montholon',
                            address: '2 Rue Mayran, 75009 Paris',
                            sport_id: football.id,
                            longitude: 48.87717,
                            latitude: 2.34569)
puts "Location #{location.name} created successfully!"

puts "Creating locations..."
location = Location.create!(name: 'Square Montholon',
                            address: '2 Rue Mayran, 75009 Paris',
                            sport_id: basketball.id,
                            longitude: 48.87717,
                            latitude: 2.34569)
puts "Location #{location.name} created successfully!"

puts "Creating locations..."
location = Location.create!(name: "Square d'Anvers",
                            address: '10 bis avenue Trudaine 75009 Paris',
                            sport_id: basketball.id,
                            longitude: 48.85083,
                            latitude: 2.27414)
puts "Location #{location.name} created successfully!"

puts "Creating locations..."
location = Location.create!(name: "Square d'Anvers",
                            address: '10 bis avenue Trudaine 75009 Paris',
                            sport_id: basketball.id,
                            longitude: 48.85083,
                            latitude: 2.27414)
puts "Location #{location.name} created successfully!"

puts "Creating locations..."
location = Location.create!(name: "Playground Duperré",
                            address: '22 rue Duperré, 75018 Paris',
                            sport_id: basketball.id,
                            longitude: 48.88208,
                            latitude: 2.33527)
puts "Location #{location.name} created successfully!"

puts "Creating locations..."
location = Location.create!(name: "Golf ParisLongchamp",
                            address: '61 route des Tribunes, 75016 Paris',
                            sport_id: golf.id,
                            longitude: 48.85589,
                            latitude: 2.22826)
puts "Location #{location.name} created successfully!"

puts "Creating locations..."
location = Location.create!(name: "SCUF Golf (Practice)",
                            address: "17 Rue Louise-Émilie de la Tour d'Auvergne, 75009 Paris",
                            sport_id: golf.id,
                            longitude: 48.87905,
                            latitude: 2.34379)
puts "Location #{location.name} created successfully!"

puts "Creating locations..."
location = Location.create!(name: "CLC La Cartoucherie",
                            address: "Route du Champ-de-Manœuvre, bois de Vincennes, 75012, paris",
                            sport_id: horse_riding.id,
                            longitude: 48.84848,
                            latitude: 2.43820)
puts "Location #{location.name} created successfully!"

puts "Creating locations..."
location = Location.create!(name: "Square Suzanne-Buisson",
                            address: "7 bis, rue Girardon, 75018 PARIS",
                            sport_id: petanque.id,
                            longitude: 48.8875,
                            latitude: 2.33746)
puts "Location #{location.name} created successfully!"

puts "Creating locations..."
location = Location.create!(name: "Bois de Vincennes",
                            address: "Bois de Vincennes - 75012 Paris",
                            sport_id: petanque.id,
                            longitude: 48.85337,
                            latitude: 2.43523)
puts "Location #{location.name} created successfully!"

puts "Creating locations..."
location = Location.create!(name: "Bois de Vincennes",
                            address: "Bois de Vincennes - 75012 Paris",
                            sport_id: cycling.id,
                            longitude: 48.85337,
                            latitude: 2.43523)
puts "Location #{location.name} created successfully!"

puts "Creating locations..."
location = Location.create!(name: "Bois de Vincennes",
                            address: "Bois de Vincennes - 75012 Paris",
                            sport_id: running.id,
                            longitude: 48.85337,
                            latitude: 2.43523)
puts "Location #{location.name} created successfully!"

puts "Creating locations..."
location = Location.create!(name: "Bois de Vincennes",
                            address: "Bois de Vincennes - 75012 Paris",
                            sport_id: ping_pong.id,
                            longitude: 48.85337,
                            latitude: 2.43523)
puts "Location #{location.name} created successfully!"

puts "Creating locations..."
location = Location.create!(name: "Square Émile-Chautemps",
                            address: "263 Rue Saint-Martin, 75003 Paris",
                            sport_id: ping_pong.id,
                            longitude: 48.86888,
                            latitude: 2.35536)
puts "Location #{location.name} created successfully!"

puts "Creating locations..."
location = Location.create!(name: "Tennis Déjerine Doctors",
                            address: "30 Rue des Docteurs Dejerine, 75020 Paris",
                            sport_id: tennis.id,
                            longitude: 48.85686,
                            latitude: 2.41172)
puts "Location #{location.name} created successfully!"

puts "Creating locations..."
location = Location.create!(name: "Edouard Pailleron Tennis",
                            address: "22 Rue Edouard Pailleron, 75019 Paris",
                            sport_id: tennis.id,
                            longitude: 48.88143,
                            latitude: 2.38054)
puts "Location #{location.name} created successfully!"

puts "All Locations were created successfully!"

puts "Now creating the users..."
puts "Creating coach user..."
user = User.new(username: "Coach",
                email: "coach@coach.com",
                password: "coachcoach",
                age: 25)
puts "saving #{user.username}..."
user.save
puts "#{user.username} saved successfully!"

30.times do
  puts "Creating user..."
  user = User.new(username: Faker::Name.unique.female_first_name,
                  email: Faker::Internet.unique.email,
                  password: "123456",
                  age: rand(18..45))
  puts "saving #{user.username}..."
  user.save
  puts "#{user.username} saved successfully!"
end
puts "Users created successfully!"

6.times do
  puts "Creating wish..."
  user = User.all.pluck(:id).sample
  p user
  wish = Wish.new(date: Date.today,
                  sport_id: cycling.id,
                  user_id: user,
                  location: Location.all.pluck(:address).sample)
  puts "saving wish for #{cycling.name}"
  wish.save
end

6.times do
  puts "Creating wish..."
  user = User.all.pluck(:id).sample
  p user
  wish = Wish.new(date: Date.today,
                  sport_id: football.id,
                  user_id: user,
                  location: Location.all.pluck(:address).sample)
  puts "saving wish for #{football.name}"
  wish.save
end

6.times do
  puts "Creating wish..."
  user = User.all.pluck(:id).sample
  p user
  wish = Wish.new(date: Date.today,
                  sport_id: tennis.id,
                  user_id: user,
                  location: Location.all.pluck(:address).sample)
  puts "saving wish for #{tennis.name}"
  wish.save
end

6.times do
  puts "Creating wish..."
  user = User.all.pluck(:id).sample
  p user
  wish = Wish.new(date: Date.today,
                  sport_id: running.id,
                  user_id: user,
                  location: Location.all.pluck(:address).sample)
  puts "saving wish for #{running.name}"
  wish.save
end

6.times do
  puts "Creating wish..."
  user = User.all.pluck(:id).sample
  p user
  wish = Wish.new(date: Date.today,
                  sport_id: basketball.id,
                  user_id: user,
                  location: Location.all.pluck(:address).sample)
  puts "saving wish for #{basketball.name}"
  wish.save
end

6.times do
  puts "Creating wish..."
  user = User.all.pluck(:id).sample
  p user
  wish = Wish.new(date: Date.today,
                  sport_id: petanque.id,
                  user_id: user,
                  location: Location.all.pluck(:address).sample)
  puts "saving wish for #{petanque.name}"
  wish.save
end

6.times do
  puts "Creating wish..."
  user = User.all.pluck(:id).sample
  p user
  wish = Wish.new(date: Date.today,
                  sport_id: ping_pong.id,
                  user_id: user,
                  location: Location.all.pluck(:address).sample)
  puts "saving wish for #{ping_pong.name}"
  wish.save
end

6.times do
  puts "Creating wish..."
  user = User.all.pluck(:id).sample
  p user
  wish = Wish.new(date: Date.today,
                  sport_id: horse_riding.id,
                  user_id: user,
                  location: Location.all.pluck(:address).sample)
  puts "saving wish for #{horse_riding.name}"
  wish.save
end

6.times do
  puts "Creating wish..."
  user = User.all.pluck(:id).sample
  p user
  wish = Wish.new(date: Date.today,
                  sport_id: golf.id,
                  user_id: user,
                  location: Location.all.pluck(:address).sample)
  puts "saving wish for #{golf.name}"
  wish.save
end

puts "Et mercé!"
