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

# Users seed
erwann = User.create!(
  username: "edefoy",
  password: "pwd123",
  email: "erwann@gamil.com"
)

alvaro = User.create!(
  username: "vancastle",
  password: "pwd123",
  email: "alvaro@gamil.com"
)

victoire = User.create!(
  username: "VictoireBB",
  password: "pwd123",
  email: "victoire@gamil.com"
)

marc = User.create!(
  username: "MarcPLAGNES",
  password: "pwd123",
  email: "marc@gamil.com"
)

all_users = [erwann, alvaro, victoire, marc]
