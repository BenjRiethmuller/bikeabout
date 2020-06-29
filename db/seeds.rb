require 'open-uri'

puts "Destroying all users.."
User.destroy_all

puts "Destroying all bikes.."
Bike.destroy_all

puts 'Creating 5 users'

# creating benj
photo = URI.open('app/assets/users/BENJ404.jpg')
new_user = User.new do |u|
  u.email = 'benj@benj.com'
  u.password = 'benj1234'
  u.username = 'Benj'
  u.bio = "Australian in Berlin. I love buying and repairing all sorts of bikes."
  u.photo.attach(io: photo, filename: 'BENJ404.jpg', content_type: 'image/jpg')
end
new_user.save!
puts "Created #{new_user.username}"

photo = URI.open('app/assets/images/road-bike-with-basket.jpg')
new_bike = Bike.new do |b|
  b.name = "Bike with a basket"
  b.category = "Road Bike"
  b.description = "Recently upgraded road bike with basket on the front"
  b.address = "Berlin, Germany"
  b.price = 25
  b.user = new_user
  b.photo.attach(io: photo, filename: 'road-bike-with-basket.jpg', content_type: 'image/jpg')
end
new_bike.save!
puts "Created #{new_user.username}'s #{new_bike.name}!"

#   new_bike = Bike.create!(name: name, category: category, description: description, address: address, price: price, user: new_user)
