# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
require 'date'
require 'open-uri'

puts "Destroying all Likes..."
Like.destroy_all
puts "All likes destroyed successfully!"

puts "Destroying all Messages..."
Message.destroy_all
puts "All messages destroyed successfully!"

puts "Destroying all Chatrooms..."
Chatroom.destroy_all
puts "All chatrooms destroyed successfully!"

puts "Destroying all Wishes..."
Wish.destroy_all
puts "All wishes destroyed successfully!"

puts "Destroying all Matches..."
Match.destroy_all
puts "All Matches destroyed successfully!"

puts "Destroying all Users..."
User.destroy_all
puts "All users destroyed successfully!"

puts "Destroying all Locations..."
Location.destroy_all
puts "All locations destroyed successfully!"

puts "Destroying all Sports..."
Sport.destroy_all
puts "All sports destroyed successfully!"

puts "Creating sports array..."
SPORTS_ARRAY = []
SPORTS_ARRAY << cycling = Sport.create!(name: 'cycling')
puts "Sport: #{cycling.name} created !"
SPORTS_ARRAY << football = Sport.create!(name: 'football')
puts "Sport: #{football.name} created !"
SPORTS_ARRAY << tennis = Sport.create!(name: 'tennis')
puts "Sport: #{tennis.name} created !"
SPORTS_ARRAY << running = Sport.create!(name: 'running')
puts "Sport: #{running.name} created !"
SPORTS_ARRAY << basketball = Sport.create!(name: 'basketball')
puts "Sport: #{basketball.name} created !"
# handball = Sport.create!(name: 'handball')
# puts "Sport: #{handball.name} created !"
SPORTS_ARRAY << petanque = Sport.create!(name: 'pétanque')
puts "Sport: #{petanque.name} created !"
SPORTS_ARRAY << ping_pong = Sport.create!(name: 'ping pong')
puts "Sport: #{ping_pong.name} created !"
SPORTS_ARRAY << horse_riding = Sport.create!(name: 'horse riding')
puts "Sport: #{horse_riding.name} created !"
SPORTS_ARRAY << golf = Sport.create!(name: 'golf')
puts "Sport: #{golf.name} created !"
puts "All sports created successfully!"
# SPORTS_ARRAY = [cycling, football, tennis, running, basketball, petanque, ping_pong, horse_riding, golf]

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
location_football = Location.create!(name: 'Square Montholon',
                                     address: '2 Rue Mayran, 75009 Paris',
                                     sport_id: football.id,
                                     longitude: 48.87717,
                                     latitude: 2.34569)
puts "Location #{location_football.name} created successfully!"

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
location_basketball = Location.create!(name: "Playground Duperré",
                                       address: '22 rue Duperré, 75018 Paris',
                                       sport_id: basketball.id,
                                       longitude: 48.88208,
                                       latitude: 2.33527)
puts "Location #{location_basketball.name} created successfully!"

puts "Creating locations..."
location = Location.create!(name: "Golf ParisLongchamp",
                            address: '61 route des Tribunes, 75016 Paris',
                            sport_id: golf.id,
                            longitude: 48.85589,
                            latitude: 2.22826)
puts "Location #{location.name} created successfully!"

puts "Creating locations..."
location_golf = Location.create!(name: "SCUF Golf (Practice)",
                                 address: "17 Rue Louise-Émilie de la Tour d'Auvergne, 75009 Paris",
                                 sport_id: golf.id,
                                 longitude: 48.87905,
                                 latitude: 2.34379)
puts "Location #{location_golf.name} created successfully!"

puts "Creating locations..."
location_horse = Location.create!(name: "CLC La Cartoucherie",
                                  address: "Route du Champ-de-Manœuvre, bois de Vincennes, 75012, paris",
                                  sport_id: horse_riding.id,
                                  longitude: 48.84848,
                                  latitude: 2.43820)
puts "Location #{location_horse.name} created successfully!"

puts "Creating locations..."
location_petanque = Location.create!(name: "Square Suzanne-Buisson",
                                     address: "7 bis, rue Girardon, 75018 PARIS",
                                     sport_id: petanque.id,
                                     longitude: 48.8875,
                                     latitude: 2.33746)
puts "Location #{location_petanque.name} created successfully!"

puts "Creating locations..."
location = Location.create!(name: "Bois de Vincennes",
                            address: "Bois de Vincennes - 75012 Paris",
                            sport_id: petanque.id,
                            longitude: 48.85337,
                            latitude: 2.43523)
puts "Location #{location.name} created successfully!"

puts "Creating locations..."
location_cycling = Location.create!(name: "Bois de Vincennes",
                                    address: "Bois de Vincennes - 75012 Paris",
                                    sport_id: cycling.id,
                                    longitude: 48.85337,
                                    latitude: 2.43523)
puts "Location #{location_cycling.name} created successfully!"

puts "Creating locations..."
location_running = Location.create!(name: "Bois de Vincennes",
                                    address: "Bois de Vincennes - 75012 Paris",
                                    sport_id: running.id,
                                    longitude: 48.85337,
                                    latitude: 2.43523)
puts "Location #{location_running.name} created successfully!"

puts "Creating locations..."
location_ping = Location.create!(name: "Bois de Vincennes",
                                 address: "Bois de Vincennes - 75012 Paris",
                                 sport_id: ping_pong.id,
                                 longitude: 48.85337,
                                 latitude: 2.43523)
puts "Location #{location_ping.name} created successfully!"

puts "Creating locations..."
location = Location.create!(name: "Square Émile-Chautemps",
                            address: "263 Rue Saint-Martin, 75003 Paris",
                            sport_id: ping_pong.id,
                            longitude: 48.86888,
                            latitude: 2.35536)
puts "Location #{location.name} created successfully!"

puts "Creating locations..."
location_tennis = Location.create!(name: "Tennis Déjerine Doctors",
                                   address: "30 Rue des Docteurs Dejerine, 75020 Paris",
                                   sport_id: tennis.id,
                                   longitude: 48.85686,
                                   latitude: 2.41172)
puts "Location #{location_tennis.name} created successfully!"

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
  user_photo = URI.open("https://ca.slack-edge.com/T02NE0241-U0270A8PS3E-8ed3c9c41e3c-512")
  user.photo.attach(io: user_photo, filename: "#{user.username}_#{user.email}_photo.jpeg", content_type: 'image/jpeg')
puts "saving #{user.username}..."
user.save!
puts "#{user.username} saved successfully!"



puts "Creating Charlotte..."
first_user = User.new(username: 'Charlotte',
                      email: 'charlotte@lewagon.org',
                      password: "123456",
                      age: rand(27..30))
user_photo = URI.open("https://ca.slack-edge.com/T02NE0241-U01HWUHQEMQ-396ed62d24ef-512")
first_user.photo.attach(io: user_photo, filename: "Charlotte_photo.jpeg", content_type: 'image/jpeg')
puts "attaching photo...."
puts "saving Charlotte..."
first_user.save!
puts "Charlotte saved successfully!"

puts "Creating Diane..."
second_user = User.new(username: 'Diane',
                       email: 'diane@lewagon.org',
                       password: "123456",
                       age: rand(27..30))
user_photo = URI.open("https://ca.slack-edge.com/T02NE0241-UDF8DJTMM-26237fc8cffe-512")
second_user.photo.attach(io: user_photo, filename: "Diane_photo.jpeg", content_type: 'image/jpeg')
puts "attaching photo...."
puts "saving Diane..."
second_user.save!
puts "Diane saved successfully!"

puts "Creating Catherine..."
third_user = User.new(username: 'Cath',
                      email: 'catherine@lewagon.org',
                      password: "123456",
                      age: rand(27..30))
user_photo = URI.open("https://images.unsplash.com/photo-1544367567-0f2fcb009e0b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1694&q=80.jpeg")
third_user.photo.attach(io: user_photo, filename: "Catherine_photo.jpeg", content_type: 'image/jpeg')
puts "attaching photo...."
puts "saving Catherine..."
third_user.save!
puts "Catherine saved successfully!"

puts "Creating Kelly..."
forth_user = User.new(username: 'Kelly',
                      email: 'Kelly@lewagon.org',
                      password: "123456",
                      age: rand(27..30))
user_photo = URI.open("https://images.unsplash.com/photo-1465310477141-6fb93167a273?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80.jpeg")
forth_user.photo.attach(io: user_photo, filename: "Kelly_photo.jpeg", content_type: 'image/jpeg')
puts "attaching photo...."
puts "saving Kelly..."
first_user.save!
puts "Kelly saved successfully!"

puts "Creating Paume..."
fifth_user = User.new(username: 'Paume',
                      email: 'Paume@lewagon.org',
                      password: "123456",
                      age: rand(27..30))
user_photo = URI.open("https://images.unsplash.com/photo-1593353918842-5e2cb1366a2c?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1653&q=80.jpeg")
fifth_user.photo.attach(io: user_photo, filename: "Paume_photo.jpeg", content_type: 'image/jpeg')
puts "attaching photo...."
puts "saving Paume..."
first_user.save!
puts "Paume saved successfully!"

puts "Creating Perle..."
sixth_user = User.new(username: 'Bijoux',
                      email: 'Perle@lewagon.org',
                      password: "123456",
                      age: rand(27..30))
user_photo = URI.open("https://images.unsplash.com/photo-1552674605-db6ffd4facb5?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80.jpeg")
sixth_user.photo.attach(io: user_photo, filename: "Perle_photo.jpeg", content_type: 'image/jpeg')
puts "attaching photo...."
puts "saving Perle..."
sixth_user.save!
puts "Perle saved successfully!"

puts "Creating Anne..."
seventh_user = User.new(username: 'Anne',
                      email: 'Anne@lewagon.org',
                      password: "123456",
                      age: rand(27..30))
user_photo = URI.open("https://images.unsplash.com/photo-1610859875432-59b4c246808f?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTF8fHdvbWVuJTIwc3BvcnR8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60.jpeg")
seventh_user.photo.attach(io: user_photo, filename: "Anne_photo.jpeg", content_type: 'image/jpeg')
puts "attaching photo...."
puts "saving Anne..."
seventh_user.save!
puts "Anne saved successfully!"

puts "Creating Christelle..."
heigth_user = User.new(username: 'CriCri',
                      email: 'Christelle@lewagon.org',
                      password: "123456",
                      age: rand(27..30))
user_photo = URI.open("https://images.unsplash.com/photo-1506984548480-17c160170c06?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1100&q=80.jpeg")
heigth_user.photo.attach(io: user_photo, filename: "Christelle_photo.jpeg", content_type: 'image/jpeg')
puts "attaching photo...."
puts "saving Christelle..."
heigth_user.save!
puts "Christelle saved successfully!"

puts "Creating Paula..."
nineth_user = User.new(username: 'Popo',
                      email: 'Paula@lewagon.org',
                      password: "123456",
                      age: rand(27..30))
user_photo = URI.open("https://images.unsplash.com/photo-1542145748-bd00b11de29d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80.jpeg")
nineth_user.photo.attach(io: user_photo, filename: "Paula_photo.jpeg", content_type: 'image/jpeg')
puts "attaching photo...."
puts "saving Paula..."
nineth_user.save!
puts "Paula saved successfully!"

puts "Creating Christina..."
tenth_user = User.new(username: 'Popo',
                      email: 'Christina@lewagon.org',
                      password: "123456",
                      age: rand(27..30))
user_photo = URI.open("https://images.unsplash.com/photo-1415394171664-b29caa4dca77?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1651&q=80.jpeg")
tenth_user.photo.attach(io: user_photo, filename: "Christina_photo.jpeg", content_type: 'image/jpeg')
puts "attaching photo...."
puts "saving Christina..."
tenth_user.save!
puts "Christina saved successfully!"

puts "Creating Terry..."
eleventh_user = User.new(username: 'Terry',
                      email: 'Terry@lewagon.org',
                      password: "123456",
                      age: rand(27..30))
user_photo = URI.open("https://images.unsplash.com/photo-1612962385616-a160d4a6e767?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80.jpeg")
eleventh_user.photo.attach(io: user_photo, filename: "Terry_photo.jpeg", content_type: 'image/jpeg')
puts "attaching photo...."
puts "saving Terry..."
eleventh_user.save!
puts "Terry saved successfully!"

puts "Creating Delphine..."
eleventh_user = User.new(username: 'Delphine',
                      email: 'Delphine@lewagon.org',
                      password: "123456",
                      age: rand(27..30))
user_photo = URI.open("https://images.unsplash.com/photo-1519088641655-a49257c008e4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1334&q=80.jpeg")
eleventh_user.photo.attach(io: user_photo, filename: "Delphine_photo.jpeg", content_type: 'image/jpeg')
puts "attaching photo...."
puts "saving Delphine..."
eleventh_user.save!
puts "Delphine saved successfully!"

puts "Creating Marie..."
twelveth_user = User.new(username: 'Mamamia',
                      email: 'Marie@lewagon.org',
                      password: "123456",
                      age: rand(27..30))
user_photo = URI.open("https://images.unsplash.com/photo-1623171901016-06d5e9e870e9?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80.jpeg")
twelveth_user.photo.attach(io: user_photo, filename: "Marie_photo.jpeg", content_type: 'image/jpeg')
puts "attaching photo...."
puts "saving Marie..."
twelveth_user.save!
puts "Marie saved successfully!"

puts "Creating Hortence..."
thirteenth_user = User.new(username: 'Hortie',
                      email: 'Hortence@lewagon.org',
                      password: "123456",
                      age: rand(27..30))
user_photo = URI.open("https://images.unsplash.com/photo-1622206509367-cb16e7f50e69?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80.jpeg")
thirteenth_user.photo.attach(io: user_photo, filename: "Hortence_photo.jpeg", content_type: 'image/jpeg')
puts "attaching photo...."
puts "saving Hortence..."
thirteenth_user.save!
puts "Hortence saved successfully!"

puts "Creating Laura..."
forteenth_user = User.new(username: 'Lolo',
                      email: 'Laura@lewagon.org',
                      password: "123456",
                      age: rand(27..30))
user_photo = URI.open("https://images.unsplash.com/photo-1622206509367-cb16e7f50e69?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80.jpeg")
forteenth_user.photo.attach(io: user_photo, filename: "Laura_photo.jpeg", content_type: 'image/jpeg')
puts "attaching photo...."
puts "saving Laura..."
forteenth_user.save!
puts "Laura saved successfully!"

puts "Creating Rania..."
thirteenth_user = User.new(username: 'Rania',
                      email: 'Rania@lewagon.org',
                      password: "123456",
                      age: rand(27..30))
user_photo = URI.open("https://images.unsplash.com/photo-1620226017713-b7de2cdd476c?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=678&q=80.jpeg")
thirteenth_user.photo.attach(io: user_photo, filename: "Rania_photo.jpeg", content_type: 'image/jpeg')
puts "attaching photo...."
puts "saving Rania..."
thirteenth_user.save!
puts "Rania saved successfully!"

puts "Users created successfully!"

# puts "Creating Charlotte's wish..."
# charlottes_wish = Wish.new(date: Date.today,
#                            sport_id: cycling.id,
#                            user_id: first_user.id,
#                            location: '16 villa gaudelet, paris')
# puts "saving Charlotte's wish..."
# charlottes_wish.save!
# puts "Wish saved successfully!"

# puts "Creating Diane's wish..."
# dianes_wish = Wish.new(date: Date.today,
#                        sport_id: cycling.id,
#                        user_id: second_user.id,
#                        location: '16 villa gaudelet, paris')
# puts "saving Diane's wish..."
# dianes_wish.save!
# puts "Wish saved successfully!"

# puts "creating diane's like toward charlotte's wish"
# Like.create!(wish: charlottes_wish, user: second_user)
# puts 'likes done!'
# puts "Creating Le Wagon match"
# le_wagon_match = Match.create!(location: location_cycling)
# puts "Match created successfully!"

# puts "updating charlottes_wish..."
# charlottes_wish.update(match: le_wagon_match)
# puts "charlottes_wish updated successfully!"
# puts "Updating dianes_wish..."
# dianes_wish.update(match: le_wagon_match)
# puts "dianes_wish updated successfully!"


# 20.times do
#   puts "Creating user..."
#   user_first = User.new(username: Faker::Name.unique.female_first_name,
#                   email: Faker::Internet.unique.email,
#                   password: "123456",
#                   age: rand(18..45))
#   puts 'attaching photos on user...'
#   user_photo = URI.open("https://source.unsplash.com/collection/1712483/girl")
#   user_first.photo.attach(io: user_photo, filename: "#{user.username}_#{user.email}_photo.jpeg", content_type: 'image/jpeg')
#   puts "saving #{user.username}..."
#   user_first.save!
#   puts "#{user.username} saved successfully!"
#   sport = SPORTS_ARRAY.sample
#   location = Location.where(sport_id: sport.id)
#   date = Date.today
#   puts "Creating first user wish..."
#   first_wish = Wish.new(date: date,
#                         sport_id: sport.id,
#                         user_id: user.id,
#                         location: Location.all.pluck(:address).sample)
#   puts "saving first_user's past wish..."
#   first_wish.save!
#   puts "Creating user..."
#   user = User.new(username: Faker::Name.unique.female_first_name,
#                   email: Faker::Internet.unique.email,
#                   password: "123456",
#                   age: rand(18..45))
#   puts 'attaching photos on user...'
#   user_photo = URI.open("https://source.unsplash.com/collection/1712483/girl")
#   user.photo.attach(io: user_photo, filename: "#{user.username}_#{user.email}_photo.jpeg", content_type: 'image/jpeg')
#   puts "saving #{user.username}..."
#   user.save!
#   puts "#{user.username} saved successfully!"
#   location = Location.where(sport_id: sport.id)
#   puts "Creating first user wish..."
#   second_wish = Wish.new(date: date,
#                         sport_id: sport.id,
#                         user_id: user.id,
#                         location: Location.all.pluck(:address).sample)
#   puts "saving first_user's past wish..."
#   second_wish.save!
#   # puts "creating user's likes toward other's wish"
#   # Like.create!(wish: first_wish, user: user_first)
#   # puts 'likes done!'
# end
cycling_wish = []
10.times do
  puts "Creating cycling wish..."
  user = User.all.pluck(:id).sample
  wish = Wish.new(date: Date.today,
                  sport_id: cycling.id,
                  user_id: user,
                  location: Location.all.pluck(:address).sample)
  puts "saving wish for #{cycling.name}"
  wish.save!
  puts "Wish saved successfully!"
  cycling_wish << wish
  puts "Wish put in cycling array!"
end

football_wish = []
12.times do
  puts "Creating football wish..."
  user = User.all.pluck(:id).sample
  wish = Wish.new(date: Date.today,
                  sport_id: football.id,
                  user_id: user,
                  location: Location.all.pluck(:address).sample)
  puts "saving wish for #{football.name}"
  wish.save!
  puts "Wish saved successfully!"
  football_wish << wish
  puts "Wish put in cycling array!"
end

basketball_wish = []
11.times do
  puts "Creating basketball wish..."
  user = User.all.pluck(:id).sample
  wish = Wish.new(date: Date.today,
                  sport_id: basketball.id,
                  user_id: user,
                  location: Location.all.pluck(:address).sample)
  puts "saving wish for #{basketball.name}"
  wish.save!
  puts "Wish saved successfully!"
  basketball_wish << wish
  puts "Wish put in cycling array!"
end

tennis_wish = []
10.times do
  puts "Creating tennis wish..."
  user = User.all.pluck(:id).sample
  wish = Wish.new(date: Date.today,
                  sport_id: tennis.id,
                  user_id: user,
                  location: Location.all.pluck(:address).sample)
  puts "saving wish for #{tennis.name}"
  wish.save!
  puts "Wish saved successfully!"
  tennis_wish << wish
  puts "Wish put in cycling array!"
end

running_wish = []
6.times do
  puts "Creating running wish..."
  user = User.all.pluck(:id).sample
  wish = Wish.new(date: Date.today,
                  sport_id: running.id,
                  user_id: user,
                  location: Location.all.pluck(:address).sample)
  puts "saving wish for #{running.name}"
  wish.save!
  puts "Wish saved successfully!"
  running_wish << wish
  puts "Wish put in cycling array!"
end

petanque_wish = []
5.times do
  puts "Creating petanque wish..."
  user = User.all.pluck(:id).sample
  wish = Wish.new(date: Date.today,
                  sport_id: petanque.id,
                  user_id: user,
                  location: Location.all.pluck(:address).sample)
  puts "saving wish for #{petanque.name}"
  wish.save!
  puts "Wish saved successfully!"
  petanque_wish << wish
  puts "Wish put in cycling array!"
end

horse_riding_wish = []
3.times do
  puts "Creating horse_riding wish..."
  user = User.all.pluck(:id).sample
  wish = Wish.new(date: Date.today,
                  sport_id: horse_riding.id,
                  user_id: user,
                  location: Location.all.pluck(:address).sample)
  puts "saving wish for #{horse_riding.name}"
  wish.save!
  puts "Wish saved successfully!"
  horse_riding_wish << wish
  puts "Wish put in cycling array!"
end

ping_pong_wish = []
4.times do
  puts "Creating ping_pong wish..."
  user = User.all.pluck(:id).sample
  wish = Wish.new(date: Date.today,
                  sport_id: ping_pong.id,
                  user_id: user,
                  location: Location.all.pluck(:address).sample)
  puts "saving wish for #{ping_pong.name}"
  wish.save!
  puts "Wish saved successfully!"
  ping_pong_wish << wish
  puts "Wish put in cycling array!"
end

golf_wish = []
8.times do
  puts "Creating golf wish..."
  user = User.all.pluck(:id).sample
  wish = Wish.new(date: Date.today,
                  sport_id: golf.id,
                  user_id: user,
                  location: Location.all.pluck(:address).sample)
  puts "saving wish for #{golf.name}"
  wish.save!
  puts "Wish saved successfully!"
  golf_wish << wish
  puts "Wish put in cycling array!"
end


# 3.times do
#   puts "Creating user..."
#   user_first = User.new(username: Faker::Name.unique.female_first_name,
#                   email: Faker::Internet.unique.email,
#                   password: "123456",
#                   age: rand(18..45))
#   puts 'attaching photos on first user...'
#   user_photo = URI.open("https://source.unsplash.com/collection/1712483/girl")
#   user_first.photo.attach(io: user_photo, filename: "#{user_first.username}_#{user_first.email}_photo.jpeg", content_type: 'image/jpeg')
#   puts "saving #{user_first.username}..."
#   user_first.save!
#   puts "#{user_first.username} saved successfully!"
#   puts "Creating user..."
#   user_second = User.new(username: Faker::Name.unique.female_first_name,
#                   email: Faker::Internet.unique.email,
#                   password: "123456",
#                   age: rand(18..45))
#   puts 'attaching photos on second user....'
#   user_photo = URI.open("https://source.unsplash.com/collection/1712483/girl")
#   user_second.photo.attach(io: user_photo, filename: "#{user_second.username}_#{user_second.email}_photo.jpeg", content_type: 'image/jpeg')
#   puts "saving #{user_second.username}..."
#   user_second.save!
#   puts "#{user_second.username} saved successfully!"
#   sport = SPORTS_ARRAY[0]
#   location = Location.where(sport_id: sport.id)
#   date = Date.today
#   puts "Creating first user wish..."
#   first_wish = Wish.new(date: date,
#                         sport_id: sport.id,
#                         user_id: user_first.id,
#                         location: Location.all.pluck(:address).sample)
#   puts "saving first_user's past wish..."
#   first_wish.save!
#   puts "Past wish saved successfully!"
#   puts "choose random user..."
#   puts "Creating second's past wish..."
#   second_wish = Wish.new(date: date,
#                          sport_id: sport.id,
#                          user_id: user_second.id,
#                          location: Location.all.pluck(:address).sample)
#   puts "saving second's past wish..."
#   second_wish.save!
#   puts "Second wish saved successfully!"

  # puts "Creating first's match"
  # first_match = Match.create!(location: location.first)
  # puts "Match created successfully!"

  # puts "updating first's wish..."
  # first_wish.update(match: first_match)
  # puts "first_wish updated successfully!"

  # puts "Updating second's wish..."
  # second_wish.update(match: first_match)
  # puts "second_wish updated successfully!"
# end

# 3.times do
#   puts "Creating user..."
#   user_first = User.new(username: Faker::Name.unique.female_first_name,
#                   email: Faker::Internet.unique.email,
#                   password: "123456",
#                   age: rand(18..45))
#   puts 'attaching photos on first user...'
#   user_photo = URI.open("https://source.unsplash.com/collection/1712483/girl")
#   user_first.photo.attach(io: user_photo, filename: "#{user_first.username}_#{user_first.email}_photo.jpeg", content_type: 'image/jpeg')
#   puts "saving #{user_first.username}..."
#   user_first.save!
#   puts "#{user_first.username} saved successfully!"
#   puts "Creating user..."
#   user_second = User.new(username: Faker::Name.unique.female_first_name,
#                   email: Faker::Internet.unique.email,
#                   password: "123456",
#                   age: rand(18..45))
#   puts 'attaching photos on second user....'
#   user_photo = URI.open("https://source.unsplash.com/collection/1712483/girl")
#   user_second.photo.attach(io: user_photo, filename: "#{user_second.username}_#{user_second.email}_photo.jpeg", content_type: 'image/jpeg')
#   puts "saving #{user_second.username}..."
#   user_second.save!
#   puts "#{user_second.username} saved successfully!"
#   sport = SPORTS_ARRAY[1]
#   location = Location.where(sport_id: sport.id)
#   date = Date.today
#   puts "Creating first user wish..."
#   first_wish = Wish.new(date: date,
#                         sport_id: sport.id,
#                         user_id: user_first.id,
#                         location: Location.all.pluck(:address).sample)
#   puts "saving first_user's past wish..."
#   first_wish.save!
#   puts "Past wish saved successfully!"
#   puts "choose second user..."
#   puts "Creating second's past wish..."
#   second_wish = Wish.new(date: date,
#                          sport_id: sport.id,
#                          user_id: user_second.id,
#                          location: Location.all.pluck(:address).sample)
#   puts "saving second's past wish..."
#   second_wish.save!
#   puts "Second wish saved successfully!"

#   # puts "Creating first's match"
#   # first_match = Match.create!(location: location.first)
#   # puts "Match created successfully!"

#   # puts "updating first's wish..."
#   # first_wish.update(match: first_match)
#   # puts "first_wish updated successfully!"

#   # puts "Updating second's wish..."
#   # second_wish.update(match: first_match)
#   # puts "second_wish updated successfully!"
# end

# 3.times do
#   puts "Creating user..."
#   user_first = User.new(username: Faker::Name.unique.female_first_name,
#                   email: Faker::Internet.unique.email,
#                   password: "123456",
#                   age: rand(18..45))
#   puts 'attaching photos on first user...'
#   user_photo = URI.open("https://source.unsplash.com/collection/1712483/girl")
#   user_first.photo.attach(io: user_photo, filename: "#{user_first.username}_#{user_first.email}_photo.jpeg", content_type: 'image/jpeg')
#   puts "saving #{user_first.username}..."
#   user_first.save!
#   puts "#{user_first.username} saved successfully!"
#   puts "Creating user..."
#   user_second = User.new(username: Faker::Name.unique.female_first_name,
#                   email: Faker::Internet.unique.email,
#                   password: "123456",
#                   age: rand(18..45))
#   puts 'attaching photos on second user....'
#   user_photo = URI.open("https://source.unsplash.com/collection/1712483/girl")
#   user_second.photo.attach(io: user_photo, filename: "#{user_second.username}_#{user_second.email}_photo.jpeg", content_type: 'image/jpeg')
#   puts "saving #{user_second.username}..."
#   user_second.save!
#   puts "#{user_second.username} saved successfully!"
#   sport = SPORTS_ARRAY[2]
#   location = Location.where(sport_id: sport.id)
#   date = Date.today
#   puts "Creating first user wish..."
#   first_wish = Wish.new(date: date,
#                         sport_id: sport.id,
#                         user_id: user_first.id,
#                         location: Location.all.pluck(:address).sample)
#   puts "saving first_user's past wish..."
#   first_wish.save!
#   puts "Past wish saved successfully!"
#   puts "choose second user..."
#   puts "Creating second's past wish..."
#   second_wish = Wish.new(date: date,
#                          sport_id: sport.id,
#                          user_id: user_second.id,
#                          location: Location.all.pluck(:address).sample)
#   puts "saving second's past wish..."
#   second_wish.save!
#   puts "Second wish saved successfully!"

#   # puts "Creating first's match"
#   # first_match = Match.create!(location: location.first)
#   # puts "Match created successfully!"

#   # puts "updating first's wish..."
#   # first_wish.update(match: first_match)
#   # puts "first_wish updated successfully!"

#   # puts "Updating second's wish..."
#   # second_wish.update(match: first_match)
#   # puts "second_wish updated successfully!"
# end

# 3.times do
#   puts "Creating user..."
#   user_first = User.new(username: Faker::Name.unique.female_first_name,
#                   email: Faker::Internet.unique.email,
#                   password: "123456",
#                   age: rand(18..45))
#   puts 'attaching photos on first user...'
#   user_photo = URI.open("https://source.unsplash.com/collection/1712483/girl")
#   user_first.photo.attach(io: user_photo, filename: "#{user_first.username}_#{user_first.email}_photo.jpeg", content_type: 'image/jpeg')
#   puts "saving #{user_first.username}..."
#   user_first.save!
#   puts "#{user_first.username} saved successfully!"
#   puts "Creating user..."
#   user_second = User.new(username: Faker::Name.unique.female_first_name,
#                   email: Faker::Internet.unique.email,
#                   password: "123456",
#                   age: rand(18..45))
#   puts 'attaching photos on second user....'
#   user_photo = URI.open("https://source.unsplash.com/collection/1712483/girl")
#   user_second.photo.attach(io: user_photo, filename: "#{user_second.username}_#{user_second.email}_photo.jpeg", content_type: 'image/jpeg')
#   puts "saving #{user_second.username}..."
#   user_second.save!
#   puts "#{user_second.username} saved successfully!"
#   sport = SPORTS_ARRAY[3]
#   location = Location.where(sport_id: sport.id)
#   date = Date.today
#   puts "Creating first user wish..."
#   first_wish = Wish.new(date: date,
#                         sport_id: sport.id,
#                         user_id: user_first.id,
#                         location: Location.all.pluck(:address).sample)
#   puts "saving first_user's past wish..."
#   first_wish.save!
#   puts "Past wish saved successfully!"
#   puts "choose second user..."
#   puts "Creating second's past wish..."
#   second_wish = Wish.new(date: date,
#                          sport_id: sport.id,
#                          user_id: user_second.id,
#                          location: Location.all.pluck(:address).sample)
#   puts "saving second's past wish..."
#   second_wish.save!
#   puts "Second wish saved successfully!"

#   # puts "Creating first's match"
#   # first_match = Match.create!(location: location.first)
#   # puts "Match created successfully!"

#   # puts "updating first's wish..."
#   # first_wish.update(match: first_match)
#   # puts "first_wish updated successfully!"

#   # puts "Updating second's wish..."
#   # second_wish.update(match: first_match)
#   # puts "second_wish updated successfully!"
# end

# 3.times do
#   puts "Creating user..."
#   user_first = User.new(username: Faker::Name.unique.female_first_name,
#                   email: Faker::Internet.unique.email,
#                   password: "123456",
#                   age: rand(18..45))
#   puts 'attaching photos on first user...'
#   user_photo = URI.open("https://source.unsplash.com/collection/1712483/girl")
#   user_first.photo.attach(io: user_photo, filename: "#{user_first.username}_#{user_first.email}_photo.jpeg", content_type: 'image/jpeg')
#   puts "saving #{user_first.username}..."
#   user_first.save!
#   puts "#{user_first.username} saved successfully!"
#   puts "Creating user..."
#   user_second = User.new(username: Faker::Name.unique.female_first_name,
#                   email: Faker::Internet.unique.email,
#                   password: "123456",
#                   age: rand(18..45))
#   puts 'attaching photos on second user....'
#   user_photo = URI.open("https://source.unsplash.com/collection/1712483/girl")
#   user_second.photo.attach(io: user_photo, filename: "#{user_second.username}_#{user_second.email}_photo.jpeg", content_type: 'image/jpeg')
#   puts "saving #{user_second.username}..."
#   user_second.save!
#   puts "#{user_second.username} saved successfully!"
#   sport = SPORTS_ARRAY[4]
#   location = Location.where(sport_id: sport.id)
#   date = Date.today
#   puts "Creating first user wish..."
#   first_wish = Wish.new(date: date,
#                         sport_id: sport.id,
#                         user_id: user_first.id,
#                         location: Location.all.pluck(:address).sample)
#   puts "saving first_user's past wish..."
#   first_wish.save!
#   puts "Past wish saved successfully!"
#   puts "choose second user..."
#   puts "Creating second's past wish..."
#   second_wish = Wish.new(date: date,
#                          sport_id: sport.id,
#                          user_id: user_second.id,
#                          location: Location.all.pluck(:address).sample)
#   puts "saving second's past wish..."
#   second_wish.save!
#   puts "Second wish saved successfully!"

#   # puts "Creating first's match"
#   # first_match = Match.create!(location: location.first)
#   # puts "Match created successfully!"

#   # puts "updating first's wish..."
#   # first_wish.update(match: first_match)
#   # puts "first_wish updated successfully!"

#   # puts "Updating second's wish..."
#   # second_wish.update(match: first_match)
#   # puts "second_wish updated successfully!"
# end

# 3.times do
#   puts "Creating user..."
#   user_first = User.new(username: Faker::Name.unique.female_first_name,
#                   email: Faker::Internet.unique.email,
#                   password: "123456",
#                   age: rand(18..45))
#   puts 'attaching photos on first user...'
#   user_photo = URI.open("https://source.unsplash.com/collection/1712483/girl")
#   user_first.photo.attach(io: user_photo, filename: "#{user_first.username}_#{user_first.email}_photo.jpeg", content_type: 'image/jpeg')
#   puts "saving #{user_first.username}..."
#   user_first.save!
#   puts "#{user_first.username} saved successfully!"
#   puts "Creating user..."
#   user_second = User.new(username: Faker::Name.unique.female_first_name,
#                   email: Faker::Internet.unique.email,
#                   password: "123456",
#                   age: rand(18..45))
#   puts 'attaching photos on second user....'
#   user_photo = URI.open("https://source.unsplash.com/collection/1712483/girl")
#   user_second.photo.attach(io: user_photo, filename: "#{user_second.username}_#{user_second.email}_photo.jpeg", content_type: 'image/jpeg')
#   puts "saving #{user_second.username}..."
#   user_second.save!
#   puts "#{user_second.username} saved successfully!"
#   sport = SPORTS_ARRAY[5]
#   location = Location.where(sport_id: sport.id)
#   date = Date.today
#   puts "Creating first user wish..."
#   first_wish = Wish.new(date: date,
#                         sport_id: sport.id,
#                         user_id: user_first.id,
#                         location: Location.all.pluck(:address).sample)
#   puts "saving first_user's past wish..."
#   first_wish.save!
#   puts "Past wish saved successfully!"
#   puts "choose second user..."
#   puts "Creating second's past wish..."
#   second_wish = Wish.new(date: date,
#                          sport_id: sport.id,
#                          user_id: user_second.id,
#                          location: Location.all.pluck(:address).sample)
#   puts "saving second's past wish..."
#   second_wish.save!
#   puts "Second wish saved successfully!"

#   # puts "Creating first's match"
#   # first_match = Match.create!(location: location.first)
#   # puts "Match created successfully!"

#   # puts "updating first's wish..."
#   # first_wish.update(match: first_match)
#   # puts "first_wish updated successfully!"

#   # puts "Updating second's wish..."
#   # second_wish.update(match: first_match)
#   # puts "second_wish updated successfully!"
# end

# 3.times do
#   puts "Creating user..."
#   user_first = User.new(username: Faker::Name.unique.female_first_name,
#                   email: Faker::Internet.unique.email,
#                   password: "123456",
#                   age: rand(18..45))
#   puts 'attaching photos on first user...'
#   user_photo = URI.open("https://source.unsplash.com/collection/1712483/girl")
#   user_first.photo.attach(io: user_photo, filename: "#{user_first.username}_#{user_first.email}_photo.jpeg", content_type: 'image/jpeg')
#   puts "saving #{user_first.username}..."
#   user_first.save!
#   puts "#{user_first.username} saved successfully!"
#   puts "Creating user..."
#   user_second = User.new(username: Faker::Name.unique.female_first_name,
#                   email: Faker::Internet.unique.email,
#                   password: "123456",
#                   age: rand(18..45))
#   puts 'attaching photos on second user....'
#   user_photo = URI.open("https://source.unsplash.com/collection/1712483/girl")
#   user_second.photo.attach(io: user_photo, filename: "#{user_second.username}_#{user_second.email}_photo.jpeg", content_type: 'image/jpeg')
#   puts "saving #{user_second.username}..."
#   user_second.save!
#   puts "#{user_second.username} saved successfully!"
#   sport = SPORTS_ARRAY[6]
#   location = Location.where(sport_id: sport.id)
#   date = Date.today
#   puts "Creating first user wish..."
#   first_wish = Wish.new(date: date,
#                         sport_id: sport.id,
#                         user_id: user_first.id,
#                         location: Location.all.pluck(:address).sample)
#   puts "saving first_user's past wish..."
#   first_wish.save!
#   puts "Past wish saved successfully!"
#   puts "choose second user..."
#   puts "Creating second's past wish..."
#   second_wish = Wish.new(date: date,
#                          sport_id: sport.id,
#                          user_id: user_second.id,
#                          location: Location.all.pluck(:address).sample)
#   puts "saving second's past wish..."
#   second_wish.save!
#   puts "Second wish saved successfully!"

#   # puts "Creating first's match"
#   # first_match = Match.create!(location: location.first)
#   # puts "Match created successfully!"

#   # puts "updating first's wish..."
#   # first_wish.update(match: first_match)
#   # puts "first_wish updated successfully!"

#   # puts "Updating second's wish..."
#   # second_wish.update(match: first_match)
#   # puts "second_wish updated successfully!"
# end

# 3.times do
#   puts "Creating user..."
#   user_first = User.new(username: Faker::Name.unique.female_first_name,
#                   email: Faker::Internet.unique.email,
#                   password: "123456",
#                   age: rand(18..45))
#   puts 'attaching photos on first user...'
#   user_photo = URI.open("https://source.unsplash.com/collection/1712483/girl")
#   user_first.photo.attach(io: user_photo, filename: "#{user_first.username}_#{user_first.email}_photo.jpeg", content_type: 'image/jpeg')
#   puts "saving #{user_first.username}..."
#   user_first.save!
#   puts "#{user_first.username} saved successfully!"
#   puts "Creating user..."
#   user_second = User.new(username: Faker::Name.unique.female_first_name,
#                   email: Faker::Internet.unique.email,
#                   password: "123456",
#                   age: rand(18..45))
#   puts 'attaching photos on second user....'
#   user_photo = URI.open("https://source.unsplash.com/collection/1712483/girl")
#   user_second.photo.attach(io: user_photo, filename: "#{user_second.username}_#{user_second.email}_photo.jpeg", content_type: 'image/jpeg')
#   puts "saving #{user_second.username}..."
#   user_second.save!
#   puts "#{user_second.username} saved successfully!"
#   sport = SPORTS_ARRAY[7]
#   location = Location.where(sport_id: sport.id)
#   date = Date.today
#   puts "Creating first user wish..."
#   first_wish = Wish.new(date: date,
#                         sport_id: sport.id,
#                         user_id: user_first.id,
#                         location: Location.all.pluck(:address).sample)
#   puts "saving first_user's past wish..."
#   first_wish.save!
#   puts "Past wish saved successfully!"
#   puts "choose second user..."
#   puts "Creating second's past wish..."
#   second_wish = Wish.new(date: date,
#                          sport_id: sport.id,
#                          user_id: user_second.id,
#                          location: Location.all.pluck(:address).sample)
#   puts "saving second's past wish..."
#   second_wish.save!
#   puts "Second wish saved successfully!"

#   # puts "Creating first's match"
#   # first_match = Match.create!(location: location.first)
#   # puts "Match created successfully!"

#   # puts "updating first's wish..."
#   # first_wish.update(match: first_match)
#   # puts "first_wish updated successfully!"

#   # puts "Updating second's wish..."
#   # second_wish.update(match: first_match)
#   # puts "second_wish updated successfully!"
# end

# 3.times do
#   puts "Creating user..."
#   user_first = User.new(username: Faker::Name.female_first_name,
#                   email: Faker::Internet.unique.email,
#                   password: "123456",
#                   age: rand(18..45))
#   puts 'attaching photos on first user...'
#   user_photo = URI.open("https://source.unsplash.com/collection/1712483/girl")
#   user_first.photo.attach(io: user_photo, filename: "#{user_first.username}_#{user_first.email}_photo.jpeg", content_type: 'image/jpeg')
#   puts "saving #{user_first.username}..."
#   user_first.save!
#   puts "#{user_first.username} saved successfully!"
#   puts "Creating user..."
#   user_second = User.new(username: Faker::Name.female_first_name,
#                   email: Faker::Internet.unique.email,
#                   password: "123456",
#                   age: rand(18..45))
#   puts 'attaching photos on second user....'
#   user_photo = URI.open("https://source.unsplash.com/collection/1712483/girl")
#   user_second.photo.attach(io: user_photo, filename: "#{user_second.username}_#{user_second.email}_photo.jpeg", content_type: 'image/jpeg')
#   puts "saving #{user_second.username}..."
#   user_second.save!
#   puts "#{user_second.username} saved successfully!"
#   sport = SPORTS_ARRAY[8]
#   location = Location.where(sport_id: sport.id)
#   date = Date.today
#   puts "Creating first user wish..."
#   first_wish = Wish.new(date: date,
#                         sport_id: sport.id,
#                         user_id: user_first.id,
#                         location: Location.all.pluck(:address).sample)
#   puts "saving first_user's past wish..."
#   first_wish.save!
#   puts "Past wish saved successfully!"
#   puts "choose second user..."
#   puts "Creating second's past wish..."
#   second_wish = Wish.new(date: date,
#                          sport_id: sport.id,
#                          user_id: user_second.id,
#                          location: Location.all.pluck(:address).sample)
#   puts "saving second's past wish..."
#   second_wish.save!
#   puts "Second wish saved successfully!"

#   # puts "Creating first's match"
#   # first_match = Match.create!(location: location.first)
#   # puts "Match created successfully!"

#   # puts "updating first's wish..."
#   # first_wish.update(match: first_match)
#   # puts "first_wish updated successfully!"

#   # puts "Updating second's wish..."
#   # second_wish.update(match: first_match)
#   # puts "second_wish updated successfully!"
# end

# 5.times do
#   sport = SPORTS_ARRAY.sample
#   location = Location.where(sport_id: sport.id)
#   random_date = Date.today - (rand * 21)
#   puts "Creating Charlotte's past wish..."
#   charlottes_wish = Wish.new(date: random_date,
#                              sport_id: sport.id,
#                              user_id: first_user.id,
#                              location: '16 villa gaudelet, paris')
#   puts "saving Charlotte's past wish..."
#   charlottes_wish.save!
#   puts "Past wish saved successfully!"
#   puts "choose random user..."
#   random_user = User.all.pluck(:id).sample
#   puts "Creating random's past wish..."
#   random_wish = Wish.new(date: random_date,
#                          sport_id: sport.id,
#                          user_id: random_user,
#                          location: Location.all.pluck(:address).sample)
#   puts "saving random's past wish..."
#   random_wish.save!
#   puts "Past wish saved successfully!"

#   # puts "Creating charlotte's match"
#   # le_wagon_match = Match.create!(location: location.first)
#   # puts "Match created successfully!"

#   # puts "updating charlotte's wish..."
#   # charlottes_wish.update(match: le_wagon_match)
#   # puts "charlottes_wish updated successfully!"

#   # puts "Updating random's wish..."
#   # random_wish.update(match: le_wagon_match)
#   # puts "random_wish updated successfully!"
# end


puts "Et mercé les T-A !"
