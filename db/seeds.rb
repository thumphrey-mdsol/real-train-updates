# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "destroying users"
User.destroy_all
puts "destroying station"
Station.destroy_all
puts "destroying Subway"
Subway.destroy_all
puts "destroying UL"
Ul.destroy_all
puts "destroying Update"
Update.destroy_all
puts "destroying Train"
Train.destroy_all


subway_names = ["1","2","A","3","Q","4","S","5","R","W"]

puts "seeding primary models"
10.times do
    User.create(user_name: Faker::Name.name, password: "BEEF")
    Station.create(name: Faker::Address.street_address)
    Subway.create(name: subway_names.sample, color: Faker::Color.color_name, img: Faker::Avatar.image)
end

destinations_array = ["Uptown","Downtown"]

puts "seeding joiner models"
15.times do

    Ul.create(user_id:  rand(User.first.id..User.last.id), station_id: rand(Station.first.id..Station.last.id))

    Update.create(user_id:  rand(User.first.id..User.last.id), subway_id: rand(Subway.first.id..Subway.last.id), delayed: rand(0..1))

    Train.create(station_id:  rand(Station.first.id..Station.last.id), subway_id: rand(Subway.first.id..Subway.last.id), destination: destinations_array.sample, stop_time: rand(1..24))

end






