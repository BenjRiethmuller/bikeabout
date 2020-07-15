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
  b.address = "Kottbusser Damm 9, Berlin, Berlin, Germany"
  b.price = 25
  b.user = new_user
  b.photo.attach(io: photo, filename: 'road-bike-with-basket.jpg', content_type: 'image/jpg')
end
new_bike.save!
puts "Created #{new_user.username}'s #{new_bike.name}!"

photo = URI.open('app/assets/images/nice-hybrid-bike.jpeg')
new_bike = Bike.new do |b|
  b.name = "Nice hybrid bike"
  b.category = "Road Bike"
  b.description = "Really fun bike to ride, looks like a road bike but it is good for cruising around."
  b.address = "Kottbusser Damm 9, Berlin, Berlin, Germany"
  b.price = 20
  b.user = new_user
  b.photo.attach(io: photo, filename: 'nice-hybrid-bike.jpeg', content_type: 'image/jpeg')
end
new_bike.save!
puts "Created #{new_user.username}'s #{new_bike.name}!"

# creating asil
photo = URI.open('app/assets/users/Asil.png')
new_user = User.new do |u|
  u.email = 'asil@asil.com'
  u.password = 'asil1234'
  u.username = 'Asil'
  u.bio = "I love all bikes!"
  u.photo.attach(io: photo, filename: 'Asil.png', content_type: 'image/png')
end
new_user.save!
puts "Created #{new_user.username}"

photo = URI.open('app/assets/images/green-racer.jpeg')
new_bike = Bike.new do |b|
  b.name = "Green Racer"
  b.category = "Road Bike"
  b.description = "Nice new racing bike, rides really well."
  b.address = "Via Speranzella 137, Naples, Campania, Italy"
  b.price = 20
  b.user = new_user
  b.photo.attach(io: photo, filename: 'green-racer.jpeg', content_type: 'image/jpeg')
end
new_bike.save!
puts "Created #{new_user.username}'s #{new_bike.name}!"

# creating clement
photo = URI.open('app/assets/users/Clement.png')
new_user = User.new do |u|
  u.email = 'clement@clement.com'
  u.password = 'clement1234'
  u.username = 'Clement'
  u.bio = "I love to ride bikes as much as I love to ride horses!"
  u.photo.attach(io: photo, filename: 'Clement.png', content_type: 'image/png')
end
new_user.save!
puts "Created #{new_user.username}"

photo = URI.open('app/assets/images/vintage-green-bike.jpg')
new_bike = Bike.new do |b|
  b.name = "Vintage green fixed gear"
  b.category = "Fixed Gear"
  b.description = "Green fixed gear. Good for cruising around and seeing the city"
  b.address = "38 Rue des Abbesses, Paris 18e Arrondissement, Île-de-France, France"
  b.price = 30
  b.user = new_user
  b.photo.attach(io: photo, filename: 'vintage-green-bike.jpg', content_type: 'image/jpg')
end
new_bike.save!
puts "Created #{new_user.username}'s #{new_bike.name}!"

# creating jasmin
photo = URI.open('app/assets/users/Jasmin.png')
new_user = User.new do |u|
  u.email = 'jasmin@jasmin.com'
  u.password = 'jasmin1234'
  u.username = 'Jasmin'
  u.bio = "Bike collector"
  u.photo.attach(io: photo, filename: 'Jasmin.png', content_type: 'image/png')
end
new_user.save!
puts "Created #{new_user.username}"

photo = URI.open('app/assets/images/double-basket-bike.jpg')
new_bike = Bike.new do |b|
  b.name = "Bike with two baskets"
  b.category = "Commuting Bike"
  b.description = "A nice bike with two baskets. Great for exploring or going for a picnic!"
  b.address = "Rechte Wienzeile 35, Vienna, Wien, Austria"
  b.price = 20
  b.user = new_user
  b.photo.attach(io: photo, filename: 'double-basket-bike.jpg', content_type: 'image/jpg')
end
new_bike.save!
puts "Created #{new_user.username}'s #{new_bike.name}!"

# creating valerie
photo = URI.open('app/assets/users/Valerie.png')
new_user = User.new do |u|
  u.email = 'valerie@valerie.com'
  u.password = 'valerie1234'
  u.username = 'Valerie'
  u.bio = "Bike enthusiast from Amsterdam. Ask me for tips on places to explore by bike"
  u.photo.attach(io: photo, filename: 'Valerie.png', content_type: 'image/png')
end
new_user.save!
puts "Created #{new_user.username}"

photo = URI.open('app/assets/images/old-dutch-bike.jpg')
new_bike = Bike.new do |b|
  b.name = "Old Dutch Bike"
  b.category = "Commuting Bike"
  b.description = "Dutch style bike. It rides really well. Recently serviced."
  b.address = "Stadhouderskade 78, Amsterdam, Noord-Holland, The Netherlands"
  b.price = 15
  b.user = new_user
  b.photo.attach(io: photo, filename: 'old-dutch-bike.jpg', content_type: 'image/jpg')
end
new_bike.save!
puts "Created #{new_user.username}'s #{new_bike.name}!"

puts "Done!"

