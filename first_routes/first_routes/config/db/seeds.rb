# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(username: 'bajeezus')
user2 = User.create(username: 'appacademy')
user3 = User.create(username: 'codingbot')
user4 = User.create(username: 'computerslave')
user5 = User.create(username: 'ineedcoffee')

artwork1 = Artwork.create(title: 'Holy Moly', owner_id: user1.id)
artwork2 = Artwork.create(title: 'Computer', owner_id: user2.id)
artwork3 = Artwork.create(title: 'BEEP BEEP BEEP', owner_id: user3.id)
artwork4 = Artwork.create(title: 'Keyboard', owner_id: user4.id)
artwork5 = Artwork.create(title: 'Caffeinated Pleasures', owner_id: user5.id)

artwork_share1 = ArtworkShare.create(user_id: user1.id ,artwork_id: artwork2.id)
artwork_share2 = ArtworkShare.create(user_id: user2.id ,artwork_id: artwork3.id)
artwork_share3 = ArtworkShare.create(user_id: user3.id ,artwork_id: artwork4.id)
artwork_share4 = ArtworkShare.create(user_id: user4.id ,artwork_id: artwork5.id)
artwork_share5 = ArtworkShare.create(user_id: user5.id ,artwork_id: artwork2.id)
