# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning database..."
House.destroy_all
User.destroy_all


puts "Creating users..."
user_1 = User.new(email: "mekko@mail.com", password: "123456", first_name: "Mekko", last_name: "Le Chat", photo: "https://cdn.pixabay.com/photo/2018/02/21/05/17/cat-3169476_1280.jpg")
user_1.save!

user_2 = User.new(email: "nico@mail.com", password: "123456", first_name: "Niko", last_name: "Le Duc", photo: "https://cdn.pixabay.com/photo/2016/05/18/18/37/rubber-duck-1401225_1280.jpg")
user_2.save!

user_1 = User.new(email: "coco@mail.com", password: "123456", first_name: "Gecko", last_name: "Le Lézard", photo: "https://cdn.pixabay.com/photo/2012/10/09/04/38/coconut-60391_1280.jpg")
user_1.save!

puts "OK for users and now..."

puts "Creating houses..."

house_1 = House.new(name: "Lake House", description: "Beau grand jumelé avec une immense pièce supplémentaire ajoutée au plan lors de la construction, terrain bordé par des haies matures pour une intimité absolue. Cette propriété comblera tous les besoins pour votre famille et vous offrira beaucoup d'espace à tous. Elle offre 3 belles chambres à coucher, planchers de bois franc. Les pièces sont spacieuses, lumineuses et très fonctionnelles. Située dans un secteur clé, tranquille et familial, à 2 pas des écoles, aréna, commerces. Tout y est!", address: "Calais", price: 70, picture: "https://cdn.pixabay.com/photo/2013/10/09/02/27/lake-192990_1280.jpg", available: true)
house_1.save!

house_2 = House.new(name: "L'Estaminette", description: "Entrez dans cette résidence au coeur vibrant de Lille, où de vastes appartements du T3 au T4 vous attendent, pensés pour votre confort absolu. Agrémentés de superbes espaces extérieurs avec possibilité de vues sur les toits de Lille , ces logements vous invitent à savourer pleinement le charme de la ville.", address: "Lille", price: 90 , picture: "https://cdn.pixabay.com/photo/2020/04/13/17/16/netherlands-5039356_1280.jpg", available: true)
house_2.save!

house_3 = House.new(name: "Rocky Moutain Palace", description: "Découvrez ce magnifique loft de 185 m2 environ, baigné de lumière, doté d'une terrasse de 80 m2 environ orientée plein ouest et proposant 3 chambres avec la possibilité d'en aménager une quatrième.", address: "Dunkerque", price: 90, picture: "https://cdn.pixabay.com/photo/2014/11/21/17/17/house-540796_1280.jpg", available: true)
house_3.save!

house_4 = House.new(name: "La Cabana", description: "Insolite triplex rénové esprit loft dans petite copropriété à faibles charges proche du CHR. En fond de résidence, au calme, il comprend entrée, séjour, cuisine entièrement équipée avec coin bar, salle à manger avec grande table, chambre avec placards, buanderie / cellier avec lave linge et sèche linge, salle de bain, WC séparés.", address: "Valenciennes", price: 40, picture: "https://cdn.pixabay.com/photo/2016/12/06/14/33/log-cabin-1886620_1280.jpg", available: true)
house_4.save!

house_5 = House.new(name: "La Villa traditionnelle", description: "Située dans une rue calme et au charme certain, large maison/loft de 252m2 habitables avec stationnement, cour intérieure et terrasse. Elle se compose au rdc d'une lumineuse pièce à vivre avec cuisine américaine et coin repas, cheminée feu de bois et sol en béton ciré, d'un bureau (côté rue), d'une buanderie, de toilettes, et d'un cellier/pièce technique.", address: "Rouen", price: 120 , picture: "https://cdn.pixabay.com/photo/2016/11/29/03/53/house-1867187_1280.jpg", available: true)
house_5.save!

house_6 = House.new(name: "Miami Place", description: "Loft de 350 m2 en duplex, 4 chambres, 4 places de parking, terrasses CO EXCLUSIVITE Vieux-Lille, à proximité du palais de justice, des commerces et d'un parc, au sein d'une copropriété de 10 lots, grand loft individuel en fond de cour. Une fois franchi le passage cocher, une cour sépare le bâtiment de rue avec le loft.", address: "Amiens", price: 200, picture: "https://cdn.pixabay.com/photo/2014/07/10/17/18/large-home-389271_1280.jpg", available: true)
house_6.save!

puts "Finished!"
