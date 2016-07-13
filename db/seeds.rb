5.times do
   User.create!(
   username: Faker::Internet.user_name,
   email:    Faker::Internet.email,
   password: Faker::Internet.password
   )
end
 
users = User.all
 
10.times do
    List.create!(
    user: users.sample,
    name: Faker::Lorem.word
    )
end

lists = List.all

50.times do
    Item.create!(
    list: lists.sample,
    name: Faker::Lorem.sentence
    )
end

puts "Seed finished"
puts "#{User.count} users created"
puts "#{List.count} lists created"
puts "#{Item.count} items created"