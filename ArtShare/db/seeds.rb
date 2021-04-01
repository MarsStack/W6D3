# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ArtworkShare.delete_all
Artwork.delete_all
User.delete_all



user1 = User.create!(username: 'Mohammad')
user2 = User.create!(username: 'Elvin')
user3 = User.create!(username: 'Marc')
artwork1 = Artwork.create!(title: 'raptors', image_url: 'nba.com', artist_id: user1.id)
artwork2 = Artwork.create!(title: 'lakers', image_url: 'youtube.com', artist_id: user2.id)
artwork3 = Artwork.create!(title: 'nets', image_url: 'reddit.com', artist_id: user3.id)
ArtworkShare.create!(artwork_id: artwork1.id, viewer_id: user2.id)
ArtworkShare.create!(artwork_id: artwork3.id, viewer_id: user1.id)
ArtworkShare.create!(artwork_id: artwork2.id, viewer_id: user3.id)