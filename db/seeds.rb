require 'faker'

10.times do |i|
  nom = Faker::Restaurant.name
  address = Faker::Address.street_address
  rating = rand(1..5)

  # Affiche les données dans le terminal
  puts "Nom #{i + 1}"
  puts "Nom : #{nom}"
  puts "Address : #{address}"
  puts "rating : #{rating}"
  puts '-' * 50

  # Sauvegarde les données dans la base de données
  Restaurant.create(name: nom, address: address, rating: rating)
end
