# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

def seed_it_boi
   Song.destroy_all 
   Artist.destroy_all
   Genre.destroy_all
   song = Song.create(name: "gettin hot in herre")
   artist = Artist.create(name: "Nelly", bio: "band aid face")
   genre = Genre.create(name: "rap")
   song.artist = artist 
   song.genre = genre
   song.save
end

seed_it_boi




